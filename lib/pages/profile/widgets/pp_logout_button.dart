import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_siakad_app/bloc/bloc/logout_bloc.dart';
import 'package:flutter_siakad_app/common/constants/custom_navigation.dart';
import 'package:flutter_siakad_app/common/widgets/buttons.dart';
import 'package:flutter_siakad_app/common/widgets/pop_up_message.dart';
import 'package:flutter_siakad_app/data/data_sources/auth_local_data_sources.dart';
import 'package:flutter_siakad_app/data/data_sources/auth_remote_data_sources.dart';
import 'package:flutter_siakad_app/pages/auth/pages/auth_page.dart';

class PpLogoutButton extends StatelessWidget {
  const PpLogoutButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LogoutBloc(AuthRemoteDataSource()),
      child: BlocConsumer<LogoutBloc, LogoutState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            orElse: () => Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Button.filled(
                borderRadius: 15,
                onPressed: () =>
                    context.read<LogoutBloc>().add(const LogoutEvent.logout()),
                label: 'LOGOUT',
              ),
            ),
          );
        },
        listener: (context, state) {
          state.maybeWhen(
            loaded: (success) async {
              //delete the token in device storage
              await AuthLocalDataSources().removeToken();

              //navigate to dashboard view
              Navigate.pushReplacement(const AuthPage());
            },
            error: (error) async {
              await showDialog(
                context: context,
                builder: (context) => PopUpMessage(
                  message: error,
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
