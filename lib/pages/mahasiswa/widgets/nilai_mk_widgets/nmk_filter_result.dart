// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_siakad_app/common/constants/icons.dart';

import 'package:flutter_siakad_app/common/widgets/svg_icon.dart';

class NmkFilterResult extends StatelessWidget {
  final String? text;
  const NmkFilterResult({
    Key? key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text ?? "14 of 64 results",
          style: const TextStyle(
            fontSize: 12.0,
            color: Colors.grey,
          ),
        ),
        const SvgIcon(
          iconUrl: IconName.filter,
        ),
      ],
    );
  }
}
