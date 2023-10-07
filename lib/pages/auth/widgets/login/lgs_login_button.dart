import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_siakad_app/bloc/login/login_bloc.dart';
import 'package:flutter_siakad_app/common/constants/custom_navigation.dart';
import 'package:flutter_siakad_app/common/widgets/buttons.dart';
import 'package:flutter_siakad_app/common/widgets/pop_up_message.dart';
import 'package:flutter_siakad_app/data/data_sources/auth_local_data_sources.dart';
import 'package:flutter_siakad_app/data/data_sources/auth_remote_data_sources.dart';
import 'package:flutter_siakad_app/data/models/request/auth_request_model.dart';
import 'package:flutter_siakad_app/pages/dosen/pages/dosen_page.dart';
import 'package:flutter_siakad_app/pages/mahasiswa/pages/mahasiswa_page.dart';

class LgsLoginButton extends StatelessWidget {
  final TextEditingController userNameController;
  final TextEditingController passwordController;
  const LgsLoginButton({
    Key? key,
    required this.userNameController,
    required this.passwordController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(AuthRemoteDataSource()),
      child: BlocConsumer<LoginBloc, LoginState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            orElse: () {
              return Button.filled(
                onPressed: () {
                  //get the email & password
                  final loginModel = AuthRequestModel(
                    email: userNameController.text,
                    password: passwordController.text,
                  );

                  context
                      .read<LoginBloc>()
                      .add(LoginEvent.login(requestModel: loginModel));
                },
                label: 'Masuk',
              );
            },
          );
        },
        listener: (context, state) {
          state.maybeWhen(
            loaded: (data) async {
              //save user token to local
              AuthLocalDataSources().saveAuthData(data);

              //display login success message
              final roles = data.user.roles;

              await showDialog(
                context: context,
                builder: (context) => PopUpMessage(
                  message: roles == 'mahasiswa'
                      ? 'Login Berhasil Sebagai Mahasiswa'
                      : 'Login Berhasil Sebagai Dosen',
                  backgroundColor: Colors.greenAccent,
                ),
              );

              //navigate to dashboard view
              if (roles == 'mahasiswa') {
                Navigate.pushReplacement(const MahasiswaPage());
              } else {
                Navigate.pushReplacement(const DosenPage());
              }
            },
            error: (message) async {
              //display error message
              //display login success message
              await showDialog(
                context: context,
                builder: (context) => PopUpMessage(
                  message: message,
                  backgroundColor: Colors.redAccent,
                ),
              );
            },
            orElse: () {},
          );
        },
      ),
    );
  }
}
