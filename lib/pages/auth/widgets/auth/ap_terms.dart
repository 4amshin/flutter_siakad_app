import 'package:flutter/material.dart';
import 'package:flutter_siakad_app/common/constants/colors.dart';

class ApTerms extends StatelessWidget {
  const ApTerms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        text: "Dengan memilih salah satu, Anda menyetujuinya ",
        children: [
          TextSpan(
            text: 'Ketentuan Layanan & Kebijakan Privasi',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              color: ColorName.primary,
            ),
          ),
        ],
      ),
      style: TextStyle(
        fontSize: 11,
        color: ColorName.grey,
      ),
      textAlign: TextAlign.center,
    );
  }
}
