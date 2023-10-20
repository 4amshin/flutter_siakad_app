import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_siakad_app/bloc/schedules/schedules_bloc.dart';
import 'package:flutter_siakad_app/pages/mahasiswa/widgets/jadwal_mk_widgets/jmk_jadwal.dart';

class JmkListJadwal extends StatefulWidget {
  const JmkListJadwal({Key? key}) : super(key: key);

  @override
  State<JmkListJadwal> createState() => _JmkListJadwalState();
}

class _JmkListJadwalState extends State<JmkListJadwal> {
  @override
  void initState() {
    context.read<SchedulesBloc>().add(const SchedulesEvent.getSchedules());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: BlocBuilder<SchedulesBloc, SchedulesState>(
          builder: (context, state) {
            return state.maybeWhen(
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (message) => Center(child: Text(message)),
              loaded: (schedules) {
                return ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: schedules.length,
                  itemBuilder: (context, index) {
                    final schedule = schedules[index];
                    return JmkJadwal(
                      jamMulai: schedule.jamMulai,
                      jamSelesai: schedule.jamSelesai,
                      matkul: schedule.subject.title,
                      dosen: schedule.subject.dosen.name,
                      status: "Luring",
                    );
                  },
                );
              },
              orElse: () => const Center(child: Text('No Data')),
            );
          },
        ),
      ),
    );
  }
}
