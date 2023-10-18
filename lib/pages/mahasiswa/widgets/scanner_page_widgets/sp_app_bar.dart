// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_siakad_app/common/constants/custom_navigation.dart';
import 'package:flutter_siakad_app/pages/mahasiswa/widgets/scanner_page_widgets/sp_light_on.dart';

class SpAppBar extends StatelessWidget implements PreferredSizeWidget {
  final void Function()? lightOn;
  final bool isLightOn;
  const SpAppBar({
    Key? key,
    this.lightOn,
    required this.isLightOn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        "Scan Qr Code",
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: IconButton(
        onPressed: () => Navigate.pop(),
        icon: const Icon(
          Icons.arrow_back,
        ),
      ),
      actions: [
        SpLightOn(
          onTap: lightOn,
          isLightOn: isLightOn,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
