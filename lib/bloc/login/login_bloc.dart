import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_siakad_app/data/data_sources/auth_remote_data_sources.dart';
import 'package:flutter_siakad_app/data/models/request/auth_request_model.dart';
import 'package:flutter_siakad_app/data/models/response/auth_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRemoteDataSource dataSource;

  LoginBloc(this.dataSource) : super(const _Initial()) {
    on<_Login>(_doLogin);
  }

  Future<void> _doLogin(
    _Login event,
    Emitter<LoginState> emit,
  ) async {
    emit(const _Loading());
    final result = await dataSource.login(requestModel: event.requestModel);
    result.fold(
      (error) => emit(_Error(message: error)),
      (data) => emit(_Loaded(data: data)),
    );
  }
}
