import 'package:flutter/material.dart';

void main() {
  runApp(MyBiodata());
}

class MyBiodata extends StatelessWidget {
  // Variabel untuk menyimpan nama dan NPM
  final String nama = 'Agung Saputra';
  final String npm = '123456789';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Biodata Saya'),
          backgroundColor: Colors.blueAccent,
          
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Menambahkan foto
              Image.asset(
                'assets/images/foto.jpg',
                width: 150,
                height: 150,
              ),
              SizedBox(height: 20), // Spacer
              Text(
                'Nama: $nama',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 10), // Spacer
              Text(
                'NPM: $npm',
                style: TextStyle(fontSize: 24),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
