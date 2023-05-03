import 'package:flutter/material.dart';

import '../../../data/categories.dart';
import '../../../theme/themes.dart';

part 'index.widget.dart';
part 'index.function.dart';

class ProductBrand extends StatefulWidget {
  const ProductBrand({super.key});

  @override
  State<ProductBrand> createState() => _ProductBrandState();
}

class _ProductBrandState extends State<ProductBrand> {
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
          'Авто сэлбэг',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            // color: Colors.white,
          ),
        ),
      ),
      body: _productType,
    );
  }
}
