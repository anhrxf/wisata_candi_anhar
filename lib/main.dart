import 'package:flutter/material.dart';
<<<<<<< HEAD
=======
// import 'package:wisata_candi_anhar/data/candi_data.dart';
// import 'package:wisata_candi_anhar/screens/detail_screen.dart';
>>>>>>> 7717b33c1ef13eef2e3cb0ea834be06ccefef141
import 'package:wisata_candi_anhar/screens/profile_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Candi',
      theme: ThemeData(
<<<<<<< HEAD
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const ProfileScreen(),
=======
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // Ganti index (0, 1, 2) untuk menguji candi lain
      // home: DetailScreen(candi: candiList[6]),
      home: ProfileScreen(),
>>>>>>> 7717b33c1ef13eef2e3cb0ea834be06ccefef141
    );
  }
}