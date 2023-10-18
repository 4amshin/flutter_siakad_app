// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_siakad_app/bloc/logout/logout_bloc.dart';
import 'package:flutter_siakad_app/bloc/login/login_bloc.dart';
import 'package:flutter_siakad_app/data/data_sources/auth_remote_data_sources.dart';

class SiakadProvider extends StatelessWidget {
  final Widget child;
  const SiakadProvider({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginBloc(AuthRemoteDataSource()),
        ),
        BlocProvider(
          create: (context) => LogoutBloc(AuthRemoteDataSource()),
        ),
      ],
      child: child,
    );
  }
}
