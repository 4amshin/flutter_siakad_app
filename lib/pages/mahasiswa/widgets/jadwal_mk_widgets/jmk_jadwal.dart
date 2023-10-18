// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_siakad_app/common/constants/colors.dart';

class JmkJadwal extends StatelessWidget {
  final String jamMulai;
  final String jamSelesai;
  final String matkul;
  final String dosen;
  final String status;
  const JmkJadwal({
    Key? key,
    required this.jamMulai,
    required this.jamSelesai,
    required this.matkul,
    required this.dosen,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Text(
              jamMulai,
              style: const TextStyle(
                fontSize: 13.0,
              ),
            ),
            Text(
              jamSelesai,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        const SizedBox(width: 10),
        Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
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
        ),
        const SizedBox(width: 10),
        SizedBox(
          height: 80,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                matkul,
                style: const TextStyle(
                  fontSize: 13.0,
                  color: ColorName.primary,
                ),
              ),
              Text(
                dosen,
                style: const TextStyle(
                  fontSize: 13.0,
                ),
              ),
              Text(
                status,
                style: const TextStyle(
                  fontSize: 13.0,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
