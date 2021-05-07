import 'package:flutter/material.dart';
import 'package:navigation_basics/screens/HomeScreen.dart';
import 'package:navigation_basics/screens/MessageScreen.dart';

class DrawerScreen extends StatefulWidget {
  DrawerScreen({Key key}) : super(key: key);

  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {

  // List of screens
  List<Widget> _screenList = [
    HomeScreen(),
    MessageScreen()
  ];
  
  // Index
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer Example"),
      ),

      // body: _screenList[_currentIndex],

      body: IndexedStack(
        index: _currentIndex,
        children: _screenList,
      ),

      // Drawer widget
      drawer: Drawer(
        // accepts a widget that has children
        child: ListView(
          children: [
            // Header
            DrawerHeader(
              child: Text("Drawer Header")
            ),
            // list of items below header
            ListTile(
              title: Text("Home"),
              onTap: () {
                // change the screen on the body
                changeScreen(0);
              },
            ),
            ListTile(
              title: Text("Message"),
              onTap: (){
                changeScreen(1);
              }
            ),
            ListTile(
              title: Text("Print Console"),
              onTap: () {
                print("Hello World!");
              },
            ),
            ListTile(
              title: Text("Profile"),
              onTap: () {
                // change the screen
                Navigator.pushNamed(context, 'profile');
              },
            ),
          ],
        ),
      )
    );
  }

  void changeScreen(int index) {
    setState(() {
      _currentIndex = index;
      Navigator.pop(context);      
    });
  }
}