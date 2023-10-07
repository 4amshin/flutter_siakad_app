import 'package:flutter/material.dart';
import 'package:flutter_siakad_app/common/constants/colors.dart';
import 'package:flutter_siakad_app/common/constants/icons.dart';
import 'package:flutter_siakad_app/common/widgets/svg_icons.dart';

class DpTitle extends StatelessWidget {
  const DpTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Perkuliahan",
          style: TextStyle(
            fontSize: 20.0,
            fontFamily: 'Poppins',
            color: ColorName.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
        SvgIcon(
          iconUrl: IconName.notification,
          height: 24,
          color: ColorName.primary,
        ),
      ],
    );
  }
}
