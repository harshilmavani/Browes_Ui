import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:browes/Detail_Page.dart';
import 'package:browes/Home_Page.dart';
import 'package:flutter/material.dart';

class Bottam extends StatefulWidget {
  const Bottam({Key? key}) : super(key: key);

  @override
  State<Bottam> createState() => _BottamState();
}

class _BottamState extends State<Bottam> {
  List screen = [
    HomePage(),
    DetailPage(),
    Text('vvvv'),
  ];
  int _selectedIndex = 0;
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screen[_selectedIndex],
        bottomNavigationBar: BottomNavyBar(
          containerHeight: 70,
          selectedIndex: _selectedIndex,
          showElevation: true, // use this to remove appBar's elevation
          onItemSelected: (index) => setState(() {
            _selectedIndex = index;
          }),
          items: [
            BottomNavyBarItem(
              icon: Icon(Icons.open_in_browser),
              title: Text('Browser'),
              activeColor: Colors.orange,
            ),
            BottomNavyBarItem(
                icon: Icon(Icons.search),
                title: Text('search'),
                activeColor: Colors.orange),
            BottomNavyBarItem(
                icon: Icon(Icons.message),
                title: Text('Messages'),
                activeColor: Colors.orange),
          ],
        ));
  }
}
