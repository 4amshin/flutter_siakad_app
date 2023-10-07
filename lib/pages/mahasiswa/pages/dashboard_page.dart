import 'package:flutter/material.dart';
import 'package:flutter_siakad_app/pages/mahasiswa/widgets/dashboard_page/dp_item_list.dart';
import 'package:flutter_siakad_app/pages/mahasiswa/widgets/dashboard_page/dp_search_field.dart';
import 'package:flutter_siakad_app/pages/mahasiswa/widgets/dashboard_page/dp_title.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        const DpTitle(),
        const SizedBox(height: 18),
        DpSearchField(controller: searchController),
        const SizedBox(height: 25),
        const DpItemList(),
      ],
    );
  }
}
