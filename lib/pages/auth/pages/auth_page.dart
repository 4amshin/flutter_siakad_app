import 'package:flutter/material.dart';
import 'package:flutter_siakad_app/pages/auth/widgets/auth/ap_login_button.dart';
import 'package:flutter_siakad_app/pages/auth/widgets/auth/ap_middle_content.dart';
import 'package:flutter_siakad_app/pages/auth/widgets/auth/ap_terms.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  //check if user already login
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        minimum: EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: ApMiddleContent(),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 8.0),
            ApLoginButton(),
            SizedBox(height: 30),
            ApTerms(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
