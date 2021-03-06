import 'package:flutter/material.dart';
import 'package:navigation_basics/DrawerScreen.dart';
import 'package:navigation_basics/bottomNavScreeen2.dart';
import 'package:navigation_basics/bottomNavScreen.dart';
import 'package:navigation_basics/screens/HomeScreen.dart';
import 'package:navigation_basics/screens/ProfileScreen.dart';
import 'package:navigation_basics/tabBarNavScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      // If you want to change the main screens showing on the sample
      // app, uncomment each one of them.

      // Bottom Navigation Example
      // home: BottomNavScreen(),

      // Tab Bar Navigation Example
      // home: TabBarNavScreen(),

      // Drawer Example
      // initialRoute: 'home',
      // routes: {
      //   'home': (context) => DrawerScreen(),
      //   'profile': (context) => ProfileScreen()
      // },

      // Bottom Nav bar with Floating button
      home: BottomNavScreen2(),
    );
  }
}
