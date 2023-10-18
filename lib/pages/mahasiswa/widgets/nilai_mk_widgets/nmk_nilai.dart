// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_siakad_app/pages/mahasiswa/widgets/khs_widgets/khs_profile.dart';
import 'package:flutter_siakad_app/pages/mahasiswa/widgets/nilai_mk_widgets/nmk_row_text.dart';

class NmkNilai extends StatelessWidget {
  final String name;
  final String imgUrl;
  final String absensi;
  final String matkul;
  final String nilaiMk;
  final String keterangan;
  const NmkNilai({
    Key? key,
    required this.name,
    required this.imgUrl,
    required this.absensi,
    required this.matkul,
    required this.nilaiMk,
    required this.keterangan,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.only(bottom: 25),
      child: Column(
        children: [
          KhsProfile(
            imgUrl: imgUrl,
            name: name,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Divider(),
          ),
          Column(
            children: [
              NmkRowText(
                leftText: 'Absensi',
                isText: false,
                rightLabel: absensi,
              ),
              NmkRowText(
                leftText: matkul,
                isText: true,
                rightLabel: nilaiMk,
              ),
              NmkRowText(
                leftText: 'Keterangan',
                isText: true,
                rightLabel: keterangan,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
