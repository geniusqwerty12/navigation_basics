import 'package:flutter/material.dart';
import 'package:navigation_basics/screens/HomeScreen.dart';
import 'package:navigation_basics/screens/MessageScreen.dart';
import 'package:navigation_basics/screens/ProfileScreen.dart';

class TabBarNavScreen extends StatefulWidget {
  TabBarNavScreen({Key? key}) : super(key: key);

  @override
  _TabBarNavScreenState createState() => _TabBarNavScreenState();
}

class _TabBarNavScreenState extends State<TabBarNavScreen> {
  // List of tab screens
  List<Widget> _tabScreens = [HomeScreen(), MessageScreen(), ProfileScreen()];

  // List of tab items
  List<Widget> _tabItems = [
    // Tab widget
    Tab(icon: Icon(Icons.home), text: "Home"),
    Tab(icon: Icon(Icons.mail), text: "Message"),
    Tab(icon: Icon(Icons.person), text: "Profile"),
  ];

  @override
  Widget build(BuildContext context) {
    // controller for the tabs
    return DefaultTabController(
      // length of the tabs - must match the items and screens in terms of count
      length: _tabItems.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab Bar Navigation Example"),
          //  Tab bar widget
          bottom: TabBar(
            // accepts a list of Tab widget
            tabs: _tabItems,
          ),
        ),
        //Tab bar view widget
        body: TabBarView(
          // accepts a list of widgets
          children: _tabScreens,
        ),
      ),
    );
  }
}
