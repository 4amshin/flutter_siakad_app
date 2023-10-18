// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class NmkRowText extends StatelessWidget {
  final String leftText;
  final String rightLabel;
  final bool isText;
  const NmkRowText({
    Key? key,
    required this.leftText,
    required this.rightLabel,
    this.isText = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leftText,
            style: const TextStyle(
              fontSize: 13,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          ),
          isText
              ? Text(
                  rightLabel,
                  style: const TextStyle(
                    fontSize: 13,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                )
              : Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.greenAccent.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    rightLabel,
                    style: const TextStyle(
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      color: Colors.green,
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
