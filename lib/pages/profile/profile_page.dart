import 'package:flutter/material.dart';
import 'package:flutter_siakad_app/common/constants/colors.dart';
import 'package:flutter_siakad_app/common/constants/icons.dart';
import 'package:flutter_siakad_app/pages/profile/widgets/pp_card.dart';
import 'package:flutter_siakad_app/pages/profile/widgets/pp_item.dart';
import 'package:flutter_siakad_app/pages/profile/widgets/pp_logout_button.dart';
import 'package:flutter_siakad_app/pages/profile/widgets/pp_top_part.dart';

class ProfilePage extends StatelessWidget {
  final String role;
  const ProfilePage({Key? key, required this.role}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.light,
      body: SafeArea(
        child: ListView(
          children: [
            PpTopPart(role: role),
            const SizedBox(height: 30),
            const PpCard(
              children: [
                PpItem(
                  iconUrl: IconName.editProfile,
                  label: 'Edit Profile',
                ),
                SizedBox(height: 10.0),
                PpItem(
                  iconUrl: IconName.notification,
                  label: 'Notifikasi',
                ),
                SizedBox(height: 10.0),
                PpItem(
                  iconUrl: IconName.language,
                  label: 'Bahasa',
                ),
              ],
            ),
            const SizedBox(height: 25),
            const PpCard(
              children: [
                PpItem(
                  iconUrl: IconName.security,
                  label: 'Keamanan',
                ),
                SizedBox(height: 10.0),
                PpItem(
                  iconUrl: IconName.theme,
                  label: 'Tema',
                ),
              ],
            ),
            // const PpCard(
            //   children: [
            //     PpItem(
            //       iconUrl: IconName.helpSupport,
            //       label: 'Help & Support',
            //     ),
            //     SizedBox(height: 10.0),
            //     PpItem(
            //       iconUrl: IconName.contactUs,
            //       label: 'Contact Us',
            //     ),
            //     SizedBox(height: 10.0),
            //     PpItem(
            //       iconUrl: IconName.privacy,
            //       label: 'Privacy Policy',
            //     ),
            //   ],
            // ),
            const SizedBox(height: 20),
            const PpLogoutButton(),
          ],
        ),
      ),
    );
  }
}
