// admin_login_screen.dart

import 'package:flutter/material.dart';

class AdminLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Login'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Lakukan autentikasi admin
            // Jika berhasil, navigasikan ke halaman admin
            Navigator.pushReplacementNamed(context, '/admin_home');
          },
          child: Text('Masuk sebagai admin'),
        ),
      ),
    );
  }
}
