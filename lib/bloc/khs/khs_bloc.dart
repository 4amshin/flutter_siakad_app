import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_siakad_app/data/data_sources/khs_remote_data_source.dart';
import 'package:flutter_siakad_app/data/models/response/khs_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'khs_event.dart';
part 'khs_state.dart';
part 'khs_bloc.freezed.dart';

class KhsBloc extends Bloc<KhsEvent, KhsState> {
  final KhsRemoteDataSource dataSource;
  KhsBloc(this.dataSource) : super(const _Initial()) {
    on<_GetKhs>(_getKhs);
  }

  Future<void> _getKhs(
    _GetKhs event,
    Emitter<KhsState> emit,
  ) async {
    emit(const _Loading());
    final result = await dataSource.getKhs();
    result.fold(
      (error) => emit(_Error(message: error)),
      (khs) => emit(_Loaded(khs: khs.data)),
    );
  }
}
