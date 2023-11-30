import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class InfoKostScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Info Kost'),
      ),
      body: FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
        future: FirebaseFirestore.instance.collection('info_kost').doc('kost_id').get(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else if (!snapshot.hasData || snapshot.data == null) {
            return Text('No Data Available');
          } else {
            var data = snapshot.data?.data();
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(data?['image_url'] as String? ?? '', width: 150, height: 150),
                SizedBox(height: 20),
                Text(
                  'Nama Kost: ${data?['nama_kost'] as String? ?? ''}',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text('Alamat: ${data?['alamat_kost'] as String? ?? ''}'),
                SizedBox(height: 10),
                Text('Kontak: ${data?['kontak_kost'] as String? ?? ''}'),
              ],
            );
          }
        },
      ),
    );
  }
}
