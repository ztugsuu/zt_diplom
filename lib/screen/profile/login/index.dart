
import 'package:flutter/material.dart';

part 'index.widget.dart';
part 'index.function.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController(); 

  void _onSubmit(){
    if(_formKey.currentState!.validate()){
      debugPrint("amjilttai");
    }
  }
  @override
  Widget build(BuildContext context) {
    return _loginPage;
  }
}
