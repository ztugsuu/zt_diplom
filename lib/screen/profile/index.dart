import 'package:flutter/material.dart';
import 'package:grage_app/screen/profile/login/index.dart';

part 'index.widget.dart';
part 'index.function.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  // bool _isLogged = false;
  @override
  Widget build(BuildContext context) {
    return const LoginPage();
  }
}