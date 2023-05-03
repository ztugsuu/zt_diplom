import 'package:flutter/material.dart';

import '../../../data/moto_brand_categories.dart';
import '../../../theme/themes.dart';

part 'index.widget.dart';
part 'index.function.dart';

class MotoBrand extends StatefulWidget {
  const MotoBrand({super.key});

  @override
  State<MotoBrand> createState() => _MotoBrandState();
}

class _MotoBrandState extends State<MotoBrand> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: MyThemes.mainGreen,
        elevation: 0.0,
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
        title: const Text(
          'Мотоцикл засвар',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            // color: Colors.white,
          ),
        ),
      ),
      body: _carInfo,
    );
  }
}

