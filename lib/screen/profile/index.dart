import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:grage_app/screen/profile/login/index.dart';
import 'package:grage_app/theme/themes.dart';

import '../../data/car_services.dart';
import '../../data/history.dart';

part 'index.widget.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return _profilePage;
  }
}
