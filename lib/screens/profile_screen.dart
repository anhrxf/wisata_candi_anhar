import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // TODO: 1. Deklarasikan variabel yang dibutuhkan
  bool isSignedIn = false;
  String fullName = '';
  String userName = '';
  int favoriteCandiCount = 0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(height: 200, width: double.infinity, color: Colors.blue),
          Column(
            children:[
            // TODO: 2. Buat Bagian ProfileHeader yang berisi 
            ]
          ),
        ],
      ),
    );
  }
}
