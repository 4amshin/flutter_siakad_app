// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_siakad_app/pages/auth/widgets/login/lgs_bottom_link.dart';
import 'package:flutter_siakad_app/pages/auth/widgets/login/lgs_input_field.dart';
import 'package:flutter_siakad_app/pages/auth/widgets/login/lgs_top_part.dart';

class LoginBottomSheet extends StatelessWidget {
  const LoginBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 20,
        right: 20,
        left: 20,
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          LgsTopPart(),
          SizedBox(height: 40.0),
          LgsInputField(),
          SizedBox(height: 75),
          LgsBottomLink(),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
