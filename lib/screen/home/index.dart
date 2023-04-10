import 'package:flutter/material.dart';

part 'index.widget.dart';
part 'index.function.dart';

class ServiceType extends StatefulWidget {
  const ServiceType({super.key});
  

  @override
  State<ServiceType> createState() => _ServiceTypeState();
}


class _ServiceTypeState extends State<ServiceType> {
  

  @override
  Widget build(BuildContext context) {
    return _serviceType;
  }
}