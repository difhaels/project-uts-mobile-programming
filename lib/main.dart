import 'package:flutter/material.dart';

void main() {
  runApp(MyBiodata());
}

class MyBiodata extends StatelessWidget {
  // Variabel untuk menyimpan nama dan NPM
  final String nama = 'Agung Saputra';
  final String npm = '123456789';
  final String noHp = '0895337305533';
  final String alamat = 'Jl. Cemara No 02 RT 03 RW 01 Cileungsi';
  final double ipk = 4.01;
  final List<String> hobi = ['Main game', 'Menonton animasi'];
  final String email = 'agungsaputra@gmail.com';
  final String kalimatMotivasi = 'Skill hanya batu loncatan untuk kemenangan, kemenangan adalah ketika kita dibayar'; 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Biodata Saya'),
          backgroundColor: Colors.blueAccent,
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nama :  $nama',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'NPM : $npm',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'No HP :  $noHp',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Alamat : $alamat',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'IPK : $ipk',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Hobi : ${hobi.join(', ')}',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nama: $nama',
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      'NPM: $npm',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/foto.jpg',
                      width: 150,
                      height: 150,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
