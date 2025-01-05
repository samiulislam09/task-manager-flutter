import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class Navbar extends StatefulWidget {
  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SalomonBottomBar(
      currentIndex: currentIndex,
      onTap: (i) => setState(() => currentIndex = i),
      items: [
        SalomonBottomBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
          selectedColor: Colors.purple,
        ),
        SalomonBottomBarItem(
          icon: Icon(Icons.add),
          title: Text('Add Task'),
          selectedColor: Colors.pink,
        ),
        SalomonBottomBarItem(
          icon: Icon(Icons.person),
          title: Text('Profile'),
          selectedColor: Colors.orange,
        ),
      ],
    );
  }
}
