import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_siakad_app/bloc/time/time_cubit.dart';
import 'package:flutter_siakad_app/common/constants/colors.dart';
import 'package:flutter_siakad_app/common/constants/images.dart';
import 'package:flutter_siakad_app/pages/mahasiswa/widgets/absensi_page_widgets/ap_profile.dart';

class ApProfileBox extends StatelessWidget {
  const ApProfileBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              offset: const Offset(0, 3),
              blurRadius: 5,
            )
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),
            child: ApProfile(
              imgUrl: Images.profileImg,
              role: 'Mahasiswa',
              name: 'Rely Arfadilllah',
              time: 'Senin, 24 Juli 2023',
            ),
          ),
          const DottedLine(
            direction: Axis.horizontal,
            alignment: WrapAlignment.center,
            dashColor: ColorName.primary,
            dashGapLength: 3,
            lineThickness: 1.2,
            dashRadius: 1,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),
            child: BlocProvider(
              create: (context) => TimeCubit(),
              child: BlocBuilder<TimeCubit, DateTime>(
                builder: (context, state) {
                  final currentTime =
                      context.read<TimeCubit>().getCurrentLocalTime();
                  return Text(
                    currentTime,
                    style: const TextStyle(
                      fontSize: 30,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      color: ColorName.primary,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
