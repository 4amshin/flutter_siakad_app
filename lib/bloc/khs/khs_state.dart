part of 'khs_bloc.dart';

@freezed
class KhsState with _$KhsState {
  const factory KhsState.initial() = _Initial;
  const factory KhsState.loading() = _Loading;
  const factory KhsState.loaded({
    required List<Khs> khs,
  }) = _Loaded;
  const factory KhsState.error({
    required String message,
  }) = _Error;
}
