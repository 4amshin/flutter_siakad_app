import 'package:flutter/material.dart';
import 'package:flutter_siakad_app/common/constants/images.dart';
import 'package:flutter_siakad_app/pages/mahasiswa/widgets/dashboard_page/dp_item.dart';

class DpItemList extends StatelessWidget {
  const DpItemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DpItem(
          label: 'Kartu Hasil Studi',
          backgroundColor: const Color(0xff686BFF),
          onPressed: () {},
          imagePath: Images.khs,
        ),
        const SizedBox(height: 25),
        DpItem(
          label: 'Nilai Mata Kuliah',
          backgroundColor: const Color(0xffFFB023),
          onPressed: () {},
          imagePath: Images.nilaiMatkul,
        ),
        const SizedBox(height: 25),
        DpItem(
          label: 'Jadwal Mata Kuliah',
          backgroundColor: const Color(0xffFF68F0),
          onPressed: () {},
          imagePath: Images.jadwal,
        ),
      ],
    );
  }
}
