import 'package:flutter/material.dart';
import 'package:flutter_siakad_app/common/constants/images.dart';

class JmkListMatkul extends StatelessWidget {
  const JmkListMatkul({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Container(
            width: 110,
            padding: const EdgeInsets.only(bottom: 15),
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
                "Basis Data",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
