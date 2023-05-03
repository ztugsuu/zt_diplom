import 'package:flutter/material.dart';

import '../../../data/categories.dart';
import '../../../theme/themes.dart';

part 'index.widget.dart';
part 'index.function.dart';

class AutoWash extends StatefulWidget {
  const AutoWash({super.key});

  @override
  State<AutoWash> createState() => _AutoWashState();
}

class _AutoWashState extends State<AutoWash> {
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
          'Авто угаалга',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            // color: Colors.white,
          ),
        ),
      ),
      body: _washType,
    );
  }
}
