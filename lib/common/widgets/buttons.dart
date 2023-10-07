// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_siakad_app/common/constants/colors.dart';

enum ButtonStyle { filled, outlined }

class Button extends StatelessWidget {
  final Function() onPressed;
  final String label;
  final ButtonStyle style;
  final Color color;
  final Color textColor;
  final double width;
  final double height;
  final double borderRadius;
  final Widget? icon;

  const Button.filled({
    Key? key,
    required this.onPressed,
    required this.label,
    this.style = ButtonStyle.filled,
    this.color = ColorName.primary,
    this.textColor = Colors.white,
    this.width = double.infinity,
    this.height = 50.0,
    this.borderRadius = 6,
    this.icon,
  }) : super(key: key);

  const Button.outlined({
    Key? key,
    required this.onPressed,
    required this.label,
    this.style = ButtonStyle.outlined,
    this.color = ColorName.white,
    this.textColor = ColorName.black,
    this.width = double.infinity,
    this.height = 50.0,
    this.borderRadius = 6,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: style == ButtonStyle.filled
          ? ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: color,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  icon ?? const SizedBox.shrink(),
                  if (icon != null) const SizedBox(width: 10),
                  Text(
                    label,
                    style: TextStyle(
                      color: textColor,
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            )
          : OutlinedButton(
              onPressed: onPressed,
              style: OutlinedButton.styleFrom(
                  backgroundColor: color,
                  side: const BorderSide(color: Colors.grey),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  icon ?? const SizedBox.shrink(),
                  if (icon != null) const SizedBox(width: 10),
                  Text(
                    label,
                    style: TextStyle(
                      color: textColor,
                      fontSize: 16.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
