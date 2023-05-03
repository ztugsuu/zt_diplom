import 'package:flutter/material.dart';
import 'package:grage_app/screen/auto/auto_page.dart';

import 'home/index.dart';
import 'info/index.dart';

part 'index.widget.dart';

// class NavigationBarWidget extends StatefulWidget {
//   const NavigationBarWidget({super.key});

//   @override
//   State<NavigationBarWidget> createState() => _NavigationBarWidgetState();
// }

// class _NavigationBarWidgetState extends State<NavigationBarWidget> {
//   int _selectedIndex = 1;
//   static const List<Widget> _widgetOptions = <Widget>[
//     ServiceType(),
//     CarInfo(),
//     Profile(),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: _navigationButtons,
//     );
//   }
// }

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int pageIndex = 0;

  List pages = [const ServiceType(),  const CarInfo(), AutoPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 5, 20, 20),
        child: builMyNavBar(context),
      ),
    );
  }

  Container builMyNavBar(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            padding: const EdgeInsets.only(left: 6, right: 6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: pageIndex == 0 ? const Color( 0xff349874 ) : Colors.transparent,
            ),
            child: IconButton(
                onPressed: () {
                  setState(() {
                    pageIndex = 0;
                  });
                },
                icon: const Icon(
                  Icons.home_outlined,
                  size: 30,
                )),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            padding: const EdgeInsets.only(left: 6, right: 6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: pageIndex == 1 ? const Color( 0xff349874 ) : Colors.transparent,
            ),
            child: IconButton(
                onPressed: () {
                  setState(() {
                    pageIndex = 1;
                  });
                },
                enableFeedback: false,
                icon: const Icon(
                  Icons.add_box_outlined,
                  size: 30,
                )),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            padding: const EdgeInsets.only(left: 6, right: 6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: pageIndex == 2 ? const Color( 0xff349874 ) : Colors.transparent,
            ),
            child: IconButton(
                onPressed: () {
                  setState(() {
                    pageIndex = 2;
                  });
                },
                enableFeedback: false,
                icon: const Icon(
                  Icons.account_box_outlined,
                  size: 30,
                )),
          ),
        ],
      ),
    );
  }
}
