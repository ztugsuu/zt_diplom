import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:grage_app/screen/profile/login/register_page/index.dart';

import '../../../data/moto_brand_categories.dart';
import '../../../theme/themes.dart';

part 'index.widget.dart';

class AddPost extends StatefulWidget {
  const AddPost({super.key});

  @override
  State<AddPost> createState() => _AddPostState();
}

final _mailController = TextEditingController();
final _passwordController = TextEditingController();
final _confirmPasswordController = TextEditingController();
final _phoneController = TextEditingController();
final _firstNameController = TextEditingController();
final _lastNameController = TextEditingController();

class _AddPostState extends State<AddPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyThemes.mainGreenBG,
        elevation: 0.0,
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
        title: const Text(
          'Зар нэмэх',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            // color: Colors.white,
          ),
        ),
      ),
      body: _addPost,
    );
  }
}
