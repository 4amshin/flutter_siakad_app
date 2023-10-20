import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_siakad_app/bloc/khs/khs_bloc.dart';
import 'package:flutter_siakad_app/common/constants/images.dart';
import 'package:flutter_siakad_app/common/widgets/svg_image.dart';
import 'package:flutter_siakad_app/pages/mahasiswa/widgets/khs_widgets/khs_matkul.dart';
import 'package:flutter_siakad_app/pages/mahasiswa/widgets/khs_widgets/khs_sub_title.dart';

class KhsListMatkul extends StatefulWidget {
  const KhsListMatkul({Key? key}) : super(key: key);

  @override
  State<KhsListMatkul> createState() => _KhsListMatkulState();
}

class _KhsListMatkulState extends State<KhsListMatkul> {
  @override
  void initState() {
    context.read<KhsBloc>().add(const KhsEvent.getKhs());
    super.initState();
  }

  double ipk = 0;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: BlocBuilder<KhsBloc, KhsState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (message) => Center(child: Text(message)),
            loaded: (khs) {
              if (khs.isEmpty) {
                return const Center(
                  child: SvgImage(
                    iconUrl: Images.noData,
                    height: 225,
                  ),
                );
              }
              //count ipk
              //initialize
              double khsLength = khs.length.toDouble();

              //count for each nilai in khs
              khs.forEach((element) {
                ipk += double.parse(element.nilai);
              });

              //return total nilai/jumlah nilai
              ipk = ipk / khsLength;

              //display khs
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 15),
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: khs.length,
                      itemBuilder: (context, index) {
                        final matkul = khs[index];
                        return KhsMatkul(
                          matkul: matkul.subject.title,
                          grade: matkul.grade,
                        );
                      },
                    ),
                  ),
                  KhsSubTitle(
                    leftText: 'IPK Semester',
                    rightText: ipk.toString(),
                  ),
                ],
              );
            },
            orElse: () => const Center(
                child: Text(
              'No Data Found',
            )),
          );
        },
      ),
    );
  }
}
