import 'package:flutter/material.dart';

void main() {
  runApp(MyBiodata());
}

class MyBiodata extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BiodataScreen(),
    );
  }
}

class BiodataScreen extends StatelessWidget {
  final String nama = 'Agung Saputra';
  final String npm = '123456789';
  final String noHp = '0895337305533';
  final String alamat = 'Jl. Cemara No 02 RT 03 RW 01 Cileungsi';
  final double ipk = 4.01;
  final List<String> hobi = ['Main game', 'Menonton animasi'];
  final String email = 'agungsaputra@gmail.com';
  final String kalimatMotivasi = 'Skill hanya batu loncatan untuk kemenangan, kemenangan adalah ketika kita dibayar'; 
  final List<Map<String, String>> schoolHistory = [
    {
      'No': '1',
      'Sekolah': 'SDN 08 Cileungsi',
      'Tahun Masuk': '2010',
      'Tahun Lulus': '2016'
    },
    {
      'No': '2',
      'Sekolah': 'SMP PGRI SURYA KENCANA',
      'Tahun Masuk': '2016',
      'Tahun Lulus': '2019'
    },
    {
      'No': '3',
      'Sekolah': 'SMKN 1 Cileungsi ',
      'Tahun Masuk': '2019',
      'Tahun Lulus': '2022'
    },
    {
      'No': '4',
      'Sekolah': 'Universitas Nasional',
      'Tahun Masuk': '2022',
      'Tahun Lulus': 'Belum'
    },
  ];

  void showFoto(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Foto Saya'),
        content: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/images/foto.jpg',
                    width: 150,
                    height: 150,
                  ),
                  const SizedBox(width: 10), // Jarak antara gambar kiri dan kanan
                  Image.asset(
                    'assets/images/foto.jpg',
                    width: 150,
                    height: 150,
                  ),
                ],
              ),
              SizedBox(height: 10), // Jarak antara baris atas dan bawah
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/images/foto.jpg',
                    width: 150,
                    height: 150,
                  ),
                  SizedBox(width: 10), // Jarak antara gambar kiri dan kanan
                  Image.asset(
                    'assets/images/foto.jpg',
                    width: 150,
                    height: 150,
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: Text('Tutup'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

  void showTentangSaya(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Tentang Saya'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Nama saya Agung Saputra, seorang Pengembang Aplikasi dan Mahasiswa. Cita-cita saya adalah menjadi Fullstack Developer, UI/UX designer, bahkan System Analyst yang semuanya dapat membantu saya dalam mengembangkan aplikasi. Nah itu saja, Saya harap kita bisa bekerja sama.'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Tutup'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: SingleChildScrollView(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Icon(
                                      Icons.face,
                                      color: Colors.black,
                                      size: 30.0,
                                    ),
                                    const SizedBox(width: 10),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Nama',
                                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          nama,
                                          style: const TextStyle(fontSize: 16),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Icon(
                                      Icons.play_arrow_rounded,
                                      color: Colors.black,
                                      size: 30.0,
                                    ),
                                    const SizedBox(width: 10),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'IPK',
                                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          '$ipk',
                                          style: const TextStyle(fontSize: 16),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Icon(
                                      Icons.games,
                                      color: Colors.black,
                                      size: 30.0,
                                    ),
                                    const SizedBox(width: 10),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Hobi',
                                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                      hobi.join(', '),
                                      style: const TextStyle(fontSize: 16),
                                    ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            )
                            ,
                            const SizedBox(width: 30.0,), 
                            // sebelah kanan nohp, email, alamat
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Icon(
                                      Icons.phone_android,
                                      color: Colors.black,
                                      size: 30.0,
                                    ),
                                    const SizedBox(width: 10),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'No HP',
                                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          noHp,
                                          style: const TextStyle(fontSize: 16),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Icon(
                                      Icons.email,
                                      color: Colors.black,
                                      size: 30.0,
                                    ),
                                    const SizedBox(width: 10),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Email',
                                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          email,
                                          style: const TextStyle(fontSize: 16),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Icon(
                                      Icons.polyline_outlined,
                                      color: Colors.black,
                                      size: 30.0,
                                    ),
                                    const SizedBox(width: 10),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Alamat',
                                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          alamat,
                                          style: const TextStyle(fontSize: 16),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            )
                          
                          ]
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
                    DataTable(
                      columns: const <DataColumn>[
                        DataColumn(
                          label: Padding(
                            padding: EdgeInsets.symmetric(vertical: 2.0),
                            child: Text(
                              'No',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Padding(
                            padding: EdgeInsets.symmetric(vertical: 2.0),
                            child: Text(
                              'Sekolah',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Padding(
                            padding: EdgeInsets.symmetric(vertical: 2.0),
                            child: Text(
                              'Tahun Masuk',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Padding(
                            padding: EdgeInsets.symmetric(vertical: 2.0),
                            child: Text(
                              'Tahun Lulus',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                      rows: schoolHistory
                        .map(
                          (school) => DataRow(
                            cells: [
                              DataCell(
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 2.0),
                                  child: Text(school['No']!),
                                ),
                              ),
                              DataCell(
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 2.0),
                                  child: Text(school['Sekolah']!),
                                ),
                              ),
                              DataCell(
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 2.0),
                                  child: Text(school['Tahun Masuk']!),
                                ),
                              ),
                              DataCell(
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 2.0),
                                  child: Text(school['Tahun Lulus']!),
                                ),
                              ),
                            ],
                          ),
                        )
                      .toList(),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                      ClipOval(
                      child: Image.asset(
                        'assets/images/foto.jpg',
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        showFoto(context);
                      },
                      child: Text('Lihat Foto'),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        showTentangSaya(context);
                      },
                      child: Text('Tentang Saya'),
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
