import 'package:flutter/material.dart';
import 'package:flutter_siakad_app/common/constants/colors.dart';
import 'package:flutter_siakad_app/common/constants/custom_navigation.dart';
import 'package:flutter_siakad_app/common/constants/icons.dart';
import 'package:flutter_siakad_app/common/widgets/svg_icon.dart';
import 'package:flutter_siakad_app/common/widgets/svg_icon_button.dart';
import 'package:flutter_siakad_app/pages/mahasiswa/pages/absensi_page.dart';

class DpTitle extends StatelessWidget {
  const DpTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Perkuliahan",
          style: TextStyle(
            fontSize: 20.0,
            fontFamily: 'Poppins',
            color: ColorName.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          children: [
            SvgIconButton(
              onClick: () => Navigate.push(const AbsensiPage()),
              iconUrl: IconName.scan,
              height: 24,
              color: ColorName.primary,
            ),
            const SizedBox(width: 15),
            const SvgIcon(
              iconUrl: IconName.notification,
              height: 24,
              color: ColorName.primary,
            ),
          ],
        ),
      ],
    );
  }
}
