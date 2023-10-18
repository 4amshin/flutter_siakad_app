// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_siakad_app/common/constants/colors.dart';
import 'package:flutter_siakad_app/common/widgets/svg_icon.dart';

class PpItem extends StatelessWidget {
  final String iconUrl;
  final String label;
  const PpItem({
    Key? key,
    required this.iconUrl,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 40,
              width: 40,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: ColorName.primary.withOpacity(0.15),
                borderRadius: BorderRadius.circular(13),
              ),
              child: SvgIcon(
                iconUrl: iconUrl,
                color: ColorName.primary,
              ),
            ),
            const SizedBox(width: 13),
            Text(
              label,
              style: const TextStyle(
                fontSize: 14,
                color: ColorName.primary,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.chevron_right,
            color: ColorName.grey,
          ),
        ),
      ],
    );
  }
}
