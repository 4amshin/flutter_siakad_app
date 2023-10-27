import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_siakad_app/bloc/schedules/schedules_bloc.dart';
import 'package:flutter_siakad_app/common/constants/images.dart';
import 'package:flutter_siakad_app/pages/mahasiswa/widgets/jadwal_mk_widgets/jmk_matkul_item.dart';

class JmkListMatkul extends StatefulWidget {
  const JmkListMatkul({Key? key}) : super(key: key);

  @override
  State<JmkListMatkul> createState() => _JmkListMatkulState();
}

class _JmkListMatkulState extends State<JmkListMatkul> {
  @override
  void initState() {
    context.read<SchedulesBloc>().add(const SchedulesEvent.getSchedules());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: BlocBuilder<SchedulesBloc, SchedulesState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (message) => Center(child: Text(message)),
            loaded: (jadwal) {
              return ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: jadwal.length,
                itemBuilder: (context, index) {
                  final data = jadwal[index];
                  return JmkMatkulItem(
                    matkul: data.schedule.subject.title,
                    matkulImg: Images.basisData,
                  );
                },
              );
            },
            orElse: () => const Center(child: Text('No Data')),
          );
        },
      ),
    );
  }
}
