import 'package:flutter/material.dart';
import 'package:flutter_siakad_app/pages/mahasiswa/widgets/mahasiswa_page/mpp_logout_button.dart';

class MahasiswaProfilePage extends StatelessWidget {
  const MahasiswaProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: MppLogoutButton()),
    );
  }
}
