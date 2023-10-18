import 'package:flutter/material.dart';
import 'package:flutter_siakad_app/common/constants/colors.dart';
import 'package:flutter_siakad_app/common/widgets/simple_app_bar.dart';
import 'package:flutter_siakad_app/pages/mahasiswa/widgets/nilai_mk_widgets/nmk_filter_result.dart';
import 'package:flutter_siakad_app/pages/mahasiswa/widgets/nilai_mk_widgets/nmk_list_nilai.dart';

class NilaiMKPage extends StatelessWidget {
  const NilaiMKPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorName.light,
      appBar: SimpleAppBar(title: 'Nilai MK'),
      body: SafeArea(
        minimum: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            NmkFilterResult(),
            SizedBox(height: 20),
            NmkListNilai(),
          ],
        ),
      ),
    );
  }
}
