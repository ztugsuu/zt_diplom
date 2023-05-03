import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:grage_app/theme/themes.dart';
part 'index.widget.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

final _mailController = TextEditingController();
final _passwordController = TextEditingController();
final _confirmPasswordController = TextEditingController();
final _phoneController = TextEditingController();
final _firstNameController = TextEditingController();
final _lastNameController = TextEditingController();

@override
void dispose() {
  _mailController.dispose();
  _passwordController.dispose();
  _confirmPasswordController.dispose();
  _firstNameController.dispose();
  _lastNameController.dispose();
  _phoneController.dispose();
  // super.dispose();
}

Future signup() async {
  if (passwordConfirm()) {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: _mailController.text.trim(),
      password: _passwordController.text.trim(),
    );
    addUserDetails(
      _firstNameController.text.trim(),
      _lastNameController.text.trim(),
      _mailController.text.trim(),
      int.parse(_phoneController.text.trim()),
    );
  }
}

Future addUserDetails(
    String firstName, String lastName, String email, int phone) async {
  await FirebaseFirestore.instance.collection("users").add({
    'first name': firstName,
    'last name': lastName,
    'email': email,
    'phone': phone,
  });
}

bool passwordConfirm() {
  if (_confirmPasswordController.text.trim() == _passwordController.text.trim()) {
    return true;
  } else {
    return false;
  }
}

@override
class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyThemes.mainGreen,
        elevation: 0.0,
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
        title: const Text(
          'Бүртгүүлэх',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            // color: Colors.white,
          ),
        ),
      ),
      body: _registerPage,
    );
  }
}
