// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_siakad_app/common/constants/colors.dart';

class PpCard extends StatelessWidget {
  final List<Widget> children;
  const PpCard({
    Key? key,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: ColorName.grey.withOpacity(0.1),
              offset: const Offset(3, 6),
              blurRadius: 8,
            ),
          ]),
      child: Column(
        children: children,
      ),
    );
  }
}
