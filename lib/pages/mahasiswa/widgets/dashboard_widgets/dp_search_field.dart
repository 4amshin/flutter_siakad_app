// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_siakad_app/common/constants/icons.dart';
import 'package:flutter_siakad_app/common/widgets/svg_icon.dart';

class DpSearchField extends StatelessWidget {
  final TextEditingController controller;
  final Function(String value)? onChanged;
  const DpSearchField({
    Key? key,
    required this.controller,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: const Color(0xffe0e4ff),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextFormField(
        controller: controller,
        onChanged: onChanged,
        decoration: const InputDecoration(
          hintText: 'Cari di sini',
          hintStyle: TextStyle(
            fontSize: 14,
          ),
          prefixIcon: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: SvgIcon(
              iconUrl: IconName.search,
              height: 14,
            ),
          ),
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(16),
        ),
      ),
    );
  }
}
