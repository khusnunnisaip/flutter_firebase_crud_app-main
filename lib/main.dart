import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_firebase_crud_app/screens/home_screen/home_screen.dart';
import 'package:flutter_firebase_crud_app/screens/info_kost_screen.dart';
import 'package:flutter_firebase_crud_app/screens/info_makan_screen.dart';
import 'package:flutter_firebase_crud_app/screens/admin_login_screen.dart'; // Import halaman login admin
import 'package:flutter_firebase_crud_app/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Firebase CRUD App',
      initialRoute: '/', // Rute awal aplikasi
      routes: {
        '/': (context) => HomeScreen(),        // Rute untuk HomeScreen
        '/info_kost': (context) => InfoKostScreen(),   // Rute untuk InfoKostScreen
        '/info_makan': (context) => InfoMakanScreen(), // Rute untuk InfoMakanScreen
        '/admin_login': (context) => AdminLoginScreen(), // Tambahkan rute untuk halaman login admin
      },
    );
  }
}
