import 'package:flutter/material.dart';
import 'package:grage_app/theme/themes.dart';

import '../../../data/car_brand_categories.dart';
import '../../../data/categories.dart';
import 'carServiceType/index.dart';

part 'index.widget.dart';

class CarBrand extends StatefulWidget {
  const CarBrand({super.key});

  @override
  State<CarBrand> createState() => _CarBrandState();
}

class _CarBrandState extends State<CarBrand> {
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
          'Авто машин засвар',
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
