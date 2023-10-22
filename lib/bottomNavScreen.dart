import 'package:flutter/material.dart';
import 'package:navigation_basics/screens/HomeScreen.dart';
import 'package:navigation_basics/screens/MessageScreen.dart';
import 'package:navigation_basics/screens/ProfileScreen.dart';

class BottomNavScreen extends StatefulWidget {
  BottomNavScreen({Key? key}) : super(key: key);

  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  // index of the tab
  int _currentIndex = 0;

  // list of tab screens
  List<Widget> _tabScreens = [HomeScreen(), MessageScreen(), ProfileScreen()];

  // list of tab items
  List<BottomNavigationBarItem> _tabItems = [
    BottomNavigationBarItem(
        icon: new Icon(Icons.home),
        label: "Home",
        // change the color of the icon when it is on the current icon
        activeIcon: new Icon(Icons.home, color: Colors.red)),
    BottomNavigationBarItem(
        icon: new Icon(Icons.mail),
        label: "Messages",
        // change the color of the icon when it is on the current icon
        activeIcon: new Icon(Icons.mail, color: Colors.red)),
    BottomNavigationBarItem(
        icon: new Icon(Icons.person),
        label: "Profile",
        // change the color of the icon when it is on the current icon
        activeIcon: new Icon(Icons.person, color: Colors.red)),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Bottom Navigation Example"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: _tabItems,
        ),
        body: _tabScreens[_currentIndex],
      ),
    );
  }
}
