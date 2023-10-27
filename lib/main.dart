import 'package:flutter/material.dart';
import 'package:flutter_siakad_app/common/constants/colors.dart';
import 'package:flutter_siakad_app/common/constants/custom_navigation.dart';
import 'package:flutter_siakad_app/common/constants/screen_util.dart';
import 'package:flutter_siakad_app/data/data_sources/auth_local_data_sources.dart';
import 'package:flutter_siakad_app/pages/auth/pages/auth_page.dart';
import 'package:flutter_siakad_app/pages/mahasiswa/pages/mahasiswa_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  // Initialize your navigation service's navigatorKey
  Navigate.navigatorKey = GlobalKey<NavigatorState>();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return MaterialApp(
      title: 'Siakad UNCP',
      navigatorKey: Navigate.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: ColorName.primary,
        ),
        useMaterial3: true,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      // home: AuthPage(),
      home: FutureBuilder(
        future: AuthLocalDataSources().isLogin(),
        builder: (context, snapshot) {
          if (snapshot.hasData && snapshot.data!) {
            return const MahasiswaPage();
          } else {
            return const AuthPage();
          }
        },
      ),
    );
  }
}
