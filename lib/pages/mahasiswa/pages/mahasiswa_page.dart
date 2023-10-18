import 'package:flutter/material.dart';
import 'package:flutter_siakad_app/common/constants/colors.dart';
import 'package:flutter_siakad_app/common/constants/icons.dart';
import 'package:flutter_siakad_app/common/widgets/svg_icon.dart';
import 'package:flutter_siakad_app/pages/mahasiswa/pages/dashboard_page.dart';
import 'package:flutter_siakad_app/pages/mahasiswa/pages/jadwal_mk_page.dart';
import 'package:flutter_siakad_app/pages/profile/profile_page.dart';

class MahasiswaPage extends StatefulWidget {
  const MahasiswaPage({Key? key}) : super(key: key);

  @override
  State<MahasiswaPage> createState() => _MahasiswaPageState();
}

class _MahasiswaPageState extends State<MahasiswaPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = const [
    DashboardPage(),
    JadwalMkPage(),
    ProfilePage(role: 'Mahasiswa'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: ColorName.primary,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
              icon: SvgIcon(
                iconUrl: IconName.home,
                height: 20,
                color: _selectedIndex == 0 ? ColorName.primary : Colors.grey,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgIcon(
                iconUrl: IconName.chart,
                color: _selectedIndex == 1 ? ColorName.primary : Colors.grey,
              ),
              label: 'Chart',
            ),
            BottomNavigationBarItem(
              icon: SvgIcon(
                iconUrl: IconName.profile,
                color: _selectedIndex == 2 ? ColorName.primary : Colors.grey,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
