import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentItem = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentItem,
      elevation: 10.0,
      items: [
        // ignore: deprecated_member_use
       BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined), title: Text('Home')),
        BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today), title: Text('Today')),
        BottomNavigationBarItem(
            icon: Icon(Icons.line_weight_outlined),
            title: Text('All Exercises')),
        BottomNavigationBarItem(
            icon: Icon(Icons.settings), title: Text('Settings'))
      ],
      onTap: (index) {
        setState(() {
          _currentItem = index;
        });
      },
    );
  }
}
