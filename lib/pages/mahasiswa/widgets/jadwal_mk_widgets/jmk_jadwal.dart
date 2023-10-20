// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_siakad_app/common/constants/colors.dart';
import 'package:flutter_siakad_app/pages/mahasiswa/widgets/jadwal_mk_widgets/jmk_vertical_divider.dart';

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
        SizedBox(
          width: 65,
          child: Column(
            children: [
              Text(
                jamMulai,
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
              Text(
                jamSelesai,
                style: const TextStyle(
                  fontSize: 11,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 15),
        const JmkVerticalDivider(),
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
