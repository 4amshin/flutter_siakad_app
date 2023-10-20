import 'package:flutter/material.dart';

class JmkVerticalDivider extends StatelessWidget {
  const JmkVerticalDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 120,
          child: VerticalDivider(
            color: Colors.grey.withOpacity(0.5),
            width: 2,
            thickness: 2,
          ),
        ),
        const CircleAvatar(
          radius: 3,
          backgroundColor: Colors.grey,
        ),
      ],
    );
  }
}
