// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_siakad_app/common/constants/colors.dart';

class KhsSubTitle extends StatelessWidget {
  final String leftText;
  final String rightText;
  const KhsSubTitle({
    Key? key,
    required this.leftText,
    required this.rightText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          leftText,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.bold,
            color: ColorName.primary,
          ),
        ),
        Text(
          rightText,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.bold,
            color: ColorName.primary,
          ),
        ),
      ],
    );
  }
}
