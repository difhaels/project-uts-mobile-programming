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
                      style: const TextStyle(fontSize: 16),
                    ),
                    Text(
                      'NPM : $npm',
                      style: const TextStyle(fontSize: 16),
                    ),
                    Text(
                      'No HP :  $noHp',
                      style: const TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Alamat : $alamat',
                      style: const TextStyle(fontSize: 16),
                    ),
                    Text(
                      'IPK : $ipk',
                      style: const TextStyle(fontSize: 16),
                    ),
                    Text(
                      'Hobi : ${hobi.join(', ')}',
                      style: const TextStyle(fontSize: 16),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: Text(
                        'Kalimat Motivasi:',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      kalimatMotivasi,
                      style: const TextStyle(fontSize: 16),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: 
                      Text(
                        'Riwayat Pendidikan:',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Table(
                      border: TableBorder.all(color: Colors.black),
                      children: const [
                        TableRow(children: [
                          Text('Cell 1'),
                          Text('Cell 2'),
                          Text('Cell 3'),
                        ]),
                        TableRow(children: [
                          Text('Cell 4'),
                          Text('Cell 5'),
                          Text('Cell 6'),
                        ])
                      ],
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
