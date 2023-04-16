import 'package:flutter/material.dart';

import 'screen/index.dart';
import 'theme/styles.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'EService';

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: _title,
      theme: myTheme,
      home: const NavigationBarWidget(),
    );
  }
}

