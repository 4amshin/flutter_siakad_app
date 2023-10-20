import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_siakad_app/bloc/khs/khs_bloc.dart';
import 'package:flutter_siakad_app/common/constants/images.dart';
import 'package:flutter_siakad_app/common/widgets/simple_app_bar.dart';
import 'package:flutter_siakad_app/data/data_sources/khs_remote_data_source.dart';
import 'package:flutter_siakad_app/pages/mahasiswa/widgets/khs_widgets/khs_filter_result.dart';
import 'package:flutter_siakad_app/pages/mahasiswa/widgets/khs_widgets/khs_list_matkul.dart';
import 'package:flutter_siakad_app/pages/mahasiswa/widgets/khs_widgets/khs_profile.dart';
import 'package:flutter_siakad_app/pages/mahasiswa/widgets/khs_widgets/khs_sub_title.dart';

class KhsPage extends StatelessWidget {
  const KhsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SimpleAppBar(title: 'KHS Mahasiswa'),
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const KhsFilterResult(),
            const SizedBox(height: 40),
            const KhsProfile(
              imgUrl: Images.profileImg,
              name: 'Rely Arfadillah',
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Divider(),
            ),
            const KhsSubTitle(
              leftText: 'Mata Kuliah',
              rightText: 'Nilai',
            ),
            BlocProvider(
              create: (context) => KhsBloc(KhsRemoteDataSource()),
              child: const KhsListMatkul(),
            ),
          ],
        ),
      ),
    );
  }
}
