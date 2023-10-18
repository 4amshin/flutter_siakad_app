import 'package:flutter/material.dart';
import 'package:flutter_siakad_app/common/constants/colors.dart';
import 'package:flutter_siakad_app/pages/mahasiswa/widgets/absensi_page_widgets/ap_history_item.dart';

class ApHistory extends StatelessWidget {
  const ApHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              offset: const Offset(0, 3),
              blurRadius: 5,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Riwayat Absensi",
              style: TextStyle(
                fontSize: 15.0,
                color: ColorName.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(),
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return ApHistoryItem(
                    ruangan: "A$index",
                    matkul: "Basis Data",
                    checkIn: "19:10",
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
