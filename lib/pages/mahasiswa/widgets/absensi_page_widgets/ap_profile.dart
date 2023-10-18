// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_siakad_app/common/constants/colors.dart';
import 'package:flutter_siakad_app/common/widgets/profile_picture.dart';

class ApProfile extends StatelessWidget {
  final String imgUrl;
  final String role;
  final String name;
  final String time;
  const ApProfile({
    Key? key,
    required this.imgUrl,
    required this.role,
    required this.name,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ProfilePicture(
          imgUrl: imgUrl,
          size: 65,
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 2,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1.3,
                  color: ColorName.primary,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                role,
                style: const TextStyle(
                  fontSize: 10,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  color: ColorName.primary,
                ),
              ),
            ),
            Text(
              name,
              style: const TextStyle(
                fontSize: 15.0,
                fontFamily: 'Poppins',
                color: ColorName.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              time,
              style: const TextStyle(
                fontSize: 10.0,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
