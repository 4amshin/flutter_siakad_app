import 'package:flutter/material.dart';
import 'package:flutter_siakad_app/common/constants/images.dart';
import 'package:flutter_siakad_app/pages/mahasiswa/widgets/nilai_mk_widgets/nmk_nilai.dart';

class NmkListNilai extends StatelessWidget {
  const NmkListNilai({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return const NmkNilai(
            name: 'Rely Arfadillah',
            imgUrl: Images.profileImg,
            absensi: 'Hadir',
            matkul: 'Kecerdasan Buatan',
            nilaiMk: '100',
            keterangan: 'Tugas Praktikum',
          );
        },
      ),
    );
  }
}
