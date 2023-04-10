import 'package:flutter/material.dart';

part 'index.widget.dart';
part 'index.function.dart';

class CarInfo extends StatefulWidget {
  const CarInfo({super.key});

  @override
  State<CarInfo> createState() => _CarInfoState();
}

class _CarInfoState extends State<CarInfo> {
  @override
  Widget build(BuildContext context) {
    return _carInfo;
  }
}