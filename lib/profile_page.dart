import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final List<String> subjects = [
    'Pemrograman Mobile',
    'Manajemen Proyek TI',
    'Analisis Sistem Informasi',
    'Data Mining',
    'Kewirausahaan Digital'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Mahasiswa'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Avatar dan Nama
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/buzzlight.jpg'),
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Aldo Febriansyah',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('Sistem Informasi Bisnis'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Deskripsi
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.teal.shade50,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  'Mahasiswa semester 5 yang tertarik dengan pengembangan aplikasi mobile '
                  'dan memiliki minat pada analisis data serta UI/UX design.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14),
                ),
              ),

              SizedBox(height: 20),

              // ListView mata kuliah
              Container(
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 4,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Mata Kuliah Semester 5',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: subjects.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: Icon(Icons.book),
                            title: Text(subjects[index]),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 25),

              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/gallery');
                },
                icon: Icon(Icons.photo),
                label: Text('Lihat Galeri'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
