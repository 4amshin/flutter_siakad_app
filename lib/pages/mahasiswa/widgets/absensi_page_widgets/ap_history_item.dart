import 'package:flutter/material.dart';
import 'package:flutter_siakad_app/common/constants/colors.dart';

class ApHistoryItem extends StatelessWidget {
  final String ruangan;
  final String matkul;
  final String checkIn;
  const ApHistoryItem({
    Key? key,
    required this.ruangan,
    required this.matkul,
    required this.checkIn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.5,
          color: ColorName.primary,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                ruangan,
                style: const TextStyle(
                  height: 1,
                  fontSize: 13,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  color: ColorName.primary,
                ),
              ),
              Text(
                matkul,
                style: const TextStyle(
                  fontSize: 11,
                  fontFamily: 'Poppins',
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Text(
            checkIn,
            style: const TextStyle(
              color: ColorName.primary,
              fontSize: 13,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
