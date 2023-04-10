import 'package:flutter/material.dart';

import 'home/index.dart';
import 'info/index.dart';
import 'profile/index.dart';

part 'index.widget.dart';
part 'index.function.dart';

class NavigationBarWidget extends StatefulWidget {
  const NavigationBarWidget({super.key});

  @override
  State<NavigationBarWidget> createState() => _NavigationBarWidgetState();
}

class _NavigationBarWidgetState extends State<NavigationBarWidget> {
  int _selectedIndex = 1;
  static const List<Widget> _widgetOptions = <Widget>[
    ServiceType(),
    CarInfo(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: _navigationButtons,
    );
  }
}
