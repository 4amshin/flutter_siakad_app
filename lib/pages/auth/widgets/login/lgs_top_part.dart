import 'package:flutter/material.dart';
import 'package:flutter_siakad_app/common/constants/colors.dart';

class LgsTopPart extends StatelessWidget {
  const LgsTopPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.chevron_left),
            ),
            const Text(
              "Masuk",
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(width: 40.0),
          ],
        ),
        const Divider(),
        const SizedBox(height: 15),
        const Text(
          "Selamat Datang",
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 2),
        const Text(
          "Masukkan username dan password agar bisa mengakses informasi administrasi.",
          style: TextStyle(
            fontSize: 12,
            fontFamily: 'Poppins',
            color: ColorName.grey,
          ),
        ),
      ],
    );
  }
}
