import 'package:flutter/material.dart';
import 'package:flutter_siakad_app/common/constants/colors.dart';
import 'package:flutter_siakad_app/common/constants/images.dart';
import 'package:flutter_siakad_app/common/constants/screen_util.dart';

class ApMiddleContent extends StatelessWidget {
  const ApMiddleContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          Images.logo,
          height: ScreenUtil.logoSize,
        ),
        const SizedBox(height: 8.0),
        Text(
          "SIAKAD UNCP",
          style: TextStyle(
            fontSize: ScreenUtil.wide * 0.00012,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w800,
            color: ColorName.primary,
          ),
        ),
        SizedBox(height: ScreenUtil.screenHeight * 0.002),
        Text(
          "Melayani Edukasi, Memudahkan Administrasi!",
          textAlign: TextAlign.center,
          style: TextStyle(
            height: 1.1,
            fontSize: ScreenUtil.wide * 0.00005,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
            color: ColorName.grey,
          ),
        ),
      ],
    );
  }
}
