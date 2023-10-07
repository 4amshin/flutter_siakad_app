import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_siakad_app/common/constants/images.dart';
import 'package:flutter_siakad_app/common/constants/screen_util.dart';
import 'package:flutter_siakad_app/pages/auth/pages/auth_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    log(ScreenUtil.wide.toString());
    //stay for 3 seconds in splash page then navigate to auth page
    Future.delayed(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const AuthPage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          Images.logo,
          height: ScreenUtil.logoSize,
        ),
      ),
    );
  }
}
