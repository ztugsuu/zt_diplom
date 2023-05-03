import 'package:flutter/material.dart';
import 'package:grage_app/screen/home/car_brant_categories/index.dart';
import 'package:grage_app/screen/home/moto_brant_categories/index.dart';
import 'package:grage_app/screen/home/product_categories/index.dart';
import 'package:grage_app/screen/home/wash_categories/index.dart';
import 'package:grage_app/screen/profile/index.dart';
import 'package:grage_app/theme/themes.dart';

import '../../data/categories.dart';
import '../profile/login/index.dart';

part 'index.widget.dart';

class ServiceType extends StatefulWidget {
  const ServiceType({super.key});

  @override
  State<ServiceType> createState() => _ServiceTypeState();
}

class _ServiceTypeState extends State<ServiceType> {
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
          'Авто засвар',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            // color: Colors.white,
          ),
        ),
      ),
      body: _serviceType,
    );
  }
}
