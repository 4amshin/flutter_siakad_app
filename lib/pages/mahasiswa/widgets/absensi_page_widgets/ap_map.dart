import 'package:flutter/material.dart';
import 'package:flutter_siakad_app/common/constants/images.dart';

class ApMap extends StatelessWidget {
  const ApMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: double.infinity,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage(Images.map),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            offset: const Offset(0, 3),
            blurRadius: 5,
          )
        ],
      ),
    );
  }
}
