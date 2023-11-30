import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class InfoMakanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Info Makan'),
      ),
      body: StreamBuilder<DocumentSnapshot>(
        stream: FirebaseFirestore.instance.collection('info_makan').doc('makan_id').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else if (!snapshot.hasData || snapshot.data == null) {
            return Text('Data not available');
          } else {
            var data = snapshot.data?.data() as Map<String, dynamic>?;

            return ListView(
              children: [
                // Bagian atas: Foto Makanan
                Container(
                  width: double.infinity,
                  height: 150,
                  child: Image.network(data?['image_url'] ?? '', fit: BoxFit.cover),
                ),
                SizedBox(height: 20),
                // Bagian tengah: Nama Makanan
                ListTile(
                  title: Text('Nama Makanan: ${data?['nama_makanan'] ?? ''}'),
                ),
                // Bagian tengah: Alamat Makanan
                ListTile(
                  title: Text('Alamat: ${data?['alamat_makanan'] ?? ''}'),
                ),
                // Bagian bawah: Kontak Makanan
                ListTile(
                  title: Text('Kontak: ${data?['kontak_makanan'] ?? ''}'),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
