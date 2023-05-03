import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../profile/index.dart';
import '../profile/login/index.dart';

class AutoPage extends StatefulWidget {
  const AutoPage({super.key});

  @override
  State<AutoPage> createState() => _AutoPageState();
}

class _AutoPageState extends State<AutoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const Profile();
          } else {
            return const LoginPage();
          }
        },
      ),
    );
  }
}


// class AutoPage extends StatefulWidget {
//   const AutoPage({super.key});

//   @override
//   State<AutoPage> createState() => _AutoPageState();
// }

// class _AutoPageState extends State<AutoPage> {
//   @override
//   Widget build(BuildContext context) {
//     return 
//   }
// }

