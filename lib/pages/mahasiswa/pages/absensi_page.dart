import 'package:flutter/material.dart';
import 'package:flutter_siakad_app/common/widgets/simple_app_bar.dart';
import 'package:flutter_siakad_app/pages/mahasiswa/widgets/absensi_page_widgets/ap_history.dart';
import 'package:flutter_siakad_app/pages/mahasiswa/widgets/absensi_page_widgets/ap_map.dart';
import 'package:flutter_siakad_app/pages/mahasiswa/widgets/absensi_page_widgets/ap_profile_box.dart';
import 'package:flutter_siakad_app/pages/mahasiswa/widgets/absensi_page_widgets/ap_scan_button.dart';

class AbsensiPage extends StatelessWidget {
  const AbsensiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SimpleAppBar(title: 'Absensi Page'),
      body: SafeArea(
        minimum: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            ApProfileBox(),
            SizedBox(height: 20),
            ApMap(),
            SizedBox(height: 20),
            ApScanButton(),
            SizedBox(height: 20),
            ApHistory(),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
