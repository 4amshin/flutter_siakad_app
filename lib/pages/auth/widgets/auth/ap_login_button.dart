import 'package:flutter/material.dart';
import 'package:flutter_siakad_app/common/widgets/buttons.dart';
import 'package:flutter_siakad_app/pages/auth/widgets/login/login_bottom_sheet.dart';

class ApLoginButton extends StatelessWidget {
  const ApLoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Button.filled(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          useSafeArea: true,
          isScrollControlled: true,
          builder: (BuildContext context) {
            return const LoginBottomSheet();
          },
        );
      },
      label: 'LOGIN',
    );
  }
}
