// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_siakad_app/common/constants/colors.dart';
import 'package:flutter_siakad_app/common/constants/images.dart';
import 'package:flutter_siakad_app/common/widgets/profile_picture.dart';

class PpTopPart extends StatelessWidget {
  final String role;
  const PpTopPart({
    Key? key,
    required this.role,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 40.0,
        ),
        const ProfilePicture(
          imgUrl: Images.profileImg,
          size: 100,
        ),
        const SizedBox(height: 10),
        const Text(
          "Rely Arfadillah",
          style: TextStyle(
            fontSize: 13,
            fontFamily: 'Poppins',
            color: ColorName.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
          decoration: BoxDecoration(
            color: ColorName.primary,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            role,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}
