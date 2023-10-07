import 'package:flutter/material.dart';
import 'package:flutter_siakad_app/pages/auth/pages/auth_page.dart';

class DosenProfilePage extends StatelessWidget {
  const DosenProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const AuthPage(),
            ),
          ),
          child: const Text(
            "Logout Dosen",
            style: TextStyle(
              fontSize: 15,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
