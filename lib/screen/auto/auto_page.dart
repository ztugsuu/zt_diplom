import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:grage_app/screen/info/index.dart';

import '../profile/index.dart';
import '../profile/login/index.dart';

class AutoProfilePage extends StatelessWidget {
  const AutoProfilePage({super.key});

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


class AutoPostPage extends StatelessWidget {
  const AutoPostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const CarInfo();
          } else {
            return const LoginPage();
          }
        },
      ),
    );
  }
}
