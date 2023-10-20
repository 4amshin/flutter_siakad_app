// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class KhsMatkul extends StatelessWidget {
  final String matkul;
  final String grade;
  const KhsMatkul({
    Key? key,
    required this.matkul,
    required this.grade,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            matkul,
            style: const TextStyle(
              fontSize: 12.0,
              color: Colors.grey,
            ),
          ),
          Text(
            grade,
            style: const TextStyle(
              fontSize: 12.0,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
