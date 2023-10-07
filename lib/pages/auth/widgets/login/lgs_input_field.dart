// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import 'package:flutter_siakad_app/common/widgets/custom_text_field.dart';
import 'package:flutter_siakad_app/pages/auth/widgets/login/lgs_login_button.dart';

class LgsInputField extends StatefulWidget {
  const LgsInputField({
    Key? key,
  }) : super(key: key);

  @override
  State<LgsInputField> createState() => _LgsInputFieldState();
}

class _LgsInputFieldState extends State<LgsInputField> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    userNameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(
          controller: userNameController,
          label: 'Email',
          textInputType: TextInputType.emailAddress,
        ),
        const SizedBox(height: 12.0),
        CustomTextField(
          controller: passwordController,
          label: 'Password',
          obscureText: true,
        ),
        const SizedBox(height: 24.0),
        LgsLoginButton(
          userNameController: userNameController,
          passwordController: passwordController,
        ),
        const SizedBox(height: 5.0),
        Center(
          child: TextButton(
            onPressed: () {},
            child: const Text(
              "Lupa Password?",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
