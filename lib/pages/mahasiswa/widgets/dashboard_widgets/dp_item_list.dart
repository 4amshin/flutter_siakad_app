import 'package:flutter/material.dart';
import 'package:flutter_siakad_app/common/constants/custom_navigation.dart';
import 'package:flutter_siakad_app/common/constants/images.dart';
import 'package:flutter_siakad_app/pages/mahasiswa/pages/jadwal_mk_page.dart';
import 'package:flutter_siakad_app/pages/mahasiswa/pages/khs_page.dart';
import 'package:flutter_siakad_app/pages/mahasiswa/pages/nilai_mk_page.dart';
import 'package:flutter_siakad_app/pages/mahasiswa/widgets/dashboard_widgets/dp_item.dart';

class DpItemList extends StatelessWidget {
  const DpItemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DpItem(
          onPressed: () => Navigate.push(const KhsPage()),
          label: 'Kartu Hasil Studi',
          backgroundColor: const Color(0xff686BFF),
          imagePath: Images.khs,
        ),
        const SizedBox(height: 25),
        DpItem(
          onPressed: () => Navigate.push(const NilaiMKPage()),
          label: 'Nilai Mata Kuliah',
          backgroundColor: const Color(0xffFFB023),
          imagePath: Images.nilaiMatkul,
        ),
        const SizedBox(height: 25),
        DpItem(
          onPressed: () => Navigate.push(const JadwalMkPage()),
          label: 'Jadwal Mata Kuliah',
          backgroundColor: const Color(0xffFF68F0),
          imagePath: Images.jadwal,
        ),
      ],
    );
  }
}
