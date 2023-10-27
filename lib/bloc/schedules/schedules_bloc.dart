import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_siakad_app/data/data_sources/schedule_remote_data_source.dart';
import 'package:flutter_siakad_app/data/models/response/schedule_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedules_event.dart';
part 'schedules_state.dart';
part 'schedules_bloc.freezed.dart';

class SchedulesBloc extends Bloc<SchedulesEvent, SchedulesState> {
  final ScheduleRemoteDataSource dataSource;
  SchedulesBloc(this.dataSource) : super(const _Initial()) {
    on<_GetSchedules>(_getSchedules);
  }

  Future<void> _getSchedules(
    _GetSchedules event,
    Emitter<SchedulesState> emit,
  ) async {
    emit(const _Loading());
    final result = await dataSource.getSchedule();
    result.fold(
      (error) => emit(_Error(message: error)),
      (jadwal) => emit(_Loaded(jadwal: jadwal.data)),
    );
  }
}
