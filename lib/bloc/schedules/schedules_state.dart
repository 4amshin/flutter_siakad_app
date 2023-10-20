part of 'schedules_bloc.dart';

@freezed
class SchedulesState with _$SchedulesState {
  const factory SchedulesState.initial() = _Initial;
  const factory SchedulesState.loading() = _Loading;
  const factory SchedulesState.loaded({
    required List<Schedule> schedule,
  }) = _Loaded;
  const factory SchedulesState.error({
    required String message,
  }) = _Error;
}
