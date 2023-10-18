// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class JmkTime extends StatelessWidget {
  final String time;
  const JmkTime({
    Key? key,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      color: Colors.grey.withOpacity(0.2),
      child: Row(
        children: [
          Text(
            time,
            style: const TextStyle(
              fontSize: 13,
              color: Colors.grey,
              fontFamily: 'Poppins',
            ),
          ),
        ],
      ),
    );
  }
}
