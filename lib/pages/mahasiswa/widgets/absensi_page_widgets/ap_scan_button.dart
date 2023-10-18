import 'package:flutter/material.dart';
import 'package:flutter_siakad_app/common/constants/colors.dart';
import 'package:flutter_siakad_app/common/constants/icons.dart';
import 'package:flutter_siakad_app/common/widgets/svg_icon.dart';

class ApScanButton extends StatelessWidget {
  const ApScanButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorName.primary,
        padding: const EdgeInsets.all(20),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgIcon(
            iconUrl: IconName.scan,
            color: Colors.white,
          ),
          SizedBox(width: 8),
          Text(
            "Scan",
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
