// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  final String imgUrl;
  final double size;
  const ProfilePicture({
    Key? key,
    required this.imgUrl,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(imgUrl),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
