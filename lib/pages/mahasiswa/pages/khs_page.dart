import 'package:flutter/material.dart';
import 'package:flutter_siakad_app/common/constants/images.dart';
import 'package:flutter_siakad_app/common/widgets/simple_app_bar.dart';
import 'package:flutter_siakad_app/pages/mahasiswa/widgets/khs_widgets/khs_filter_result.dart';
import 'package:flutter_siakad_app/pages/mahasiswa/widgets/khs_widgets/khs_list_matkul.dart';
import 'package:flutter_siakad_app/pages/mahasiswa/widgets/khs_widgets/khs_profile.dart';
import 'package:flutter_siakad_app/pages/mahasiswa/widgets/khs_widgets/khs_sub_title.dart';

class KhsPage extends StatelessWidget {
  const KhsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SimpleAppBar(title: 'KHS Mahasiswa'),
      body: SafeArea(
        minimum: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            KhsFilterResult(),
            SizedBox(height: 40),
            KhsProfile(
              imgUrl: Images.profileImg,
              name: 'Rely Arfadillah',
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Divider(),
            ),
            KhsSubTitle(
              leftText: 'Mata Kuliah',
              rightText: 'Nilai',
            ),
            KhsListMatkul(),
            KhsSubTitle(
              leftText: 'IPK Semester',
              rightText: '3.18',
            ),

            // KhsNilai(),
          ],
        ),
      ),
    );
  }
}
