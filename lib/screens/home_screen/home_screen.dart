import 'package:flutter/material.dart';
import 'package:flutter_firebase_crud_app/screens/info_kost_screen.dart';
import 'package:flutter_firebase_crud_app/screens/info_makan_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => InfoKostScreen()),
              );
            },
            child: buildInfoBox('Info Kost'),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => InfoMakanScreen()),
              );
            },
            child: buildInfoBox('Info Makan'),
          ),
          SizedBox(height: 20),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/admin_login');
            },
            child: Text('Login sebagai admin? Klik disini'),
          ),
        ],
      ),
    );
  }

  Widget buildInfoBox(String title) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
