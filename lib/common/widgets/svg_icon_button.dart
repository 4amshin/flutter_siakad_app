// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgIconButton extends StatelessWidget {
  final String iconUrl;
  final double? height;
  final Color? color;
  final void Function()? onClick;
  const SvgIconButton({
    Key? key,
    required this.iconUrl,
    this.height,
    this.color,
    this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: SvgPicture.asset(
        iconUrl,
        height: height,
        colorFilter: ColorFilter.mode(
          color ?? Colors.black,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
