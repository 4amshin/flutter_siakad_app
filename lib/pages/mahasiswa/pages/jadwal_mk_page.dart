import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_siakad_app/bloc/schedules/schedules_bloc.dart';
import 'package:flutter_siakad_app/common/constants/icons.dart';
import 'package:flutter_siakad_app/common/widgets/simple_app_bar.dart';
import 'package:flutter_siakad_app/common/widgets/svg_icon_button.dart';
import 'package:flutter_siakad_app/data/data_sources/schedule_remote_data_source.dart';
import 'package:flutter_siakad_app/pages/mahasiswa/widgets/jadwal_mk_widgets/jmk_jadwal.dart';
import 'package:flutter_siakad_app/pages/mahasiswa/widgets/jadwal_mk_widgets/jmk_list_jadwal.dart';
import 'package:flutter_siakad_app/pages/mahasiswa/widgets/jadwal_mk_widgets/jmk_list_matkul.dart';
import 'package:flutter_siakad_app/pages/mahasiswa/widgets/jadwal_mk_widgets/jmk_time.dart';

class JadwalMkPage extends StatelessWidget {
  const JadwalMkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SimpleAppBar(
        title: 'Jadwal MK',
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: SvgIconButton(
              iconUrl: IconName.filter,
            ),
          ),
        ],
      ),
      body: BlocProvider(
        create: (context) => SchedulesBloc(ScheduleRemoteDataSource()),
        child: Column(
          children: [
            const JmkListMatkul(),
            const JmkTime(time: 'Selasa, 24 Juli 2023'),
            const JmkListJadwal(),
          ],
        ),
      ),
    );
  }
}
