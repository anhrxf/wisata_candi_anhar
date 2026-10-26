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
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.deepPurple, width: 2),
                    shape: BoxShape.circle,
                  ),
                  child: const CircleAvatar(
                    radius: 50,
                    backgroundImage:
                        AssetImage('images/placeholder_image.png'),
                  ),
                ),
                if (isSignedIn)
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.camera_alt,
                        color: Colors.deepPurple[50]),
                  ),
              ],
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 200 - 50),
                child: Stack(...),
              ),
            ),

            // TODO: 3. Buat ProfileInfo (info pengguna)
            Row(children: [
              Expanded(child: Text(': $fullName', ...)),
              if (isSignedIn) const Icon(Icons.edit),
              SizedBox(
                width: MediaQuery.of(context).size.width / 3,
                child: const Row(children: [
                  Icon(Icons.lock, color: Colors.amber),
                  SizedBox(width: 8),
                  
                  Text('Pengguna', style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold)),
            ]),
          ),
          Expanded(
            child: Text(': $userName',
                style: const TextStyle(fontSize: 18)),
        ),
      ]),

            // TODO: 4. Buat ProfileActions (tombol sign in/out)
            const SizedBox(height: 4),
            Divider(color: Colors.deepPurple[100]),
            const SizedBox(height: 20),
            isSignedIn
                ? TextButton(onPressed: signOut, child: const Text('Sign Out'))
                : TextButton(onPressed: signIn, child: const Text('Sign In')),

            //TODO: 5. Implementasi fungsi signIn
            void signIn() {
              setState(() {
                isSignedIn = !isSignedIn;
              });
            }

            ]
          ),
        ],
      ),
    );
  }
}
