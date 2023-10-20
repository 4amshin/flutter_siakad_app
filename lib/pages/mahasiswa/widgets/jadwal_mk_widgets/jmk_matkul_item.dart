// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_siakad_app/common/constants/images.dart';

class JmkMatkulItem extends StatelessWidget {
  final String matkul;
  final String matkulImg;
  const JmkMatkulItem({
    Key? key,
    required this.matkul,
    required this.matkulImg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      padding: const EdgeInsets.only(bottom: 10),
      margin: const EdgeInsets.only(
        left: 20,
        top: 20,
        bottom: 20,
      ),
      decoration: BoxDecoration(
        color: Colors.purple,
        image: const DecorationImage(
          image: AssetImage(Images.rpl),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            offset: const Offset(5, 5),
            blurRadius: 5,
          )
        ],
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Text(
          matkul,
          textAlign: TextAlign.center,
          style: const TextStyle(
            height: 1.1,
            fontSize: 13,
            color: Colors.white,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
