import 'package:flutter/material.dart';
import 'package:flutter_siakad_app/common/constants/colors.dart';

class LgsBottomLink extends StatelessWidget {
  const LgsBottomLink({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "Belum Punya Akun ? ",
            style: TextStyle(
              fontSize: 13.0,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: const Text(
              "Buat Akun",
              style: TextStyle(
                fontSize: 13.0,
                color: ColorName.primary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
