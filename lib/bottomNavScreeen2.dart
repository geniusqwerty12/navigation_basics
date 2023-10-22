import 'package:flutter/material.dart';
import 'package:navigation_basics/screens/HomeScreen.dart';
import 'package:navigation_basics/screens/MessageScreen.dart';
import 'package:navigation_basics/screens/ProfileScreen.dart';

// In this widget we'll apply a custom bottom nav bar
class BottomNavScreen2 extends StatefulWidget {
  BottomNavScreen2({Key? key}) : super(key: key);

  @override
  _BottomNavScreen2State createState() => _BottomNavScreen2State();
}

class _BottomNavScreen2State extends State<BottomNavScreen2> {
  // List of screens to be displayed
  List<Widget> _screenPages = [
    HomeScreen(),
    MessageScreen(),
    ProfileScreen(),
    HomeScreen()
  ];

  // Page index
  int _index = 0;

  // Retain the state of the pages using the PageStorageBucket
  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Custom Bottom Nav'),
        ),
        // we can use the PageStorage widget to save the page's state
        // body: PageStorage(
        //   // we connect the bucket here
        //   bucket: bucket,
        //   child: IndexedStack(
        //     children: _screenPages,
        //     index: _index,
        //   )
        // ),

        body: IndexedStack(
          children: _screenPages,
          index: _index,
        ),

        // Now we add the Floating action button (FAB), and place it at the center
        // the Floating action button is a widget that is rendered above all of the other widgets
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            // Put something here when the floating button is pressed
          },
        ),
        // here we can decided where to put the location of the FAB
        // this is called on the widget separate to the FAB widget
        // this configuration lets the FAB to float in the center of the bottom navigation bar
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

        // We add the bottom navigation bar, the FAB will not work
        // on the Bottom Navigation Bar widget, we'll use a BottomAppBar insted
        bottomNavigationBar: BottomAppBar(
          // Create the shape of the bottom app bar
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          // we then customize the contents of the bottm app bar
          child: Container(
            // set the height of the app bar
            height: 60,
            // We'll use Row since we want to display the items horizontally
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Unfortunately, we have to code each one of the items here

                // Home tab item
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    // Update the index here
                    setState(() {
                      _index = 0;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Content of the tab
                      // Since we cannot use the Bottom bar item,
                      // we can create a custom widget
                      Icon(
                        Icons.home,
                        color: _index == 0 ? Colors.blue : Colors.grey,
                      ),
                      Text(
                        "Home",
                        style: TextStyle(
                          color: _index == 0 ? Colors.blue : Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
                // Create similar buttons, but with different icons
                // Mesages
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      _index = 1;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.mail,
                        color: _index == 1 ? Colors.blue : Colors.grey,
                      ),
                      Text(
                        "Messages",
                        style: TextStyle(
                          color: _index == 1 ? Colors.blue : Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
                // Profile
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      _index = 2;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person,
                        color: _index == 2 ? Colors.blue : Colors.grey,
                      ),
                      Text(
                        "Profile",
                        style: TextStyle(
                          color: _index == 2 ? Colors.blue : Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
                // Extra screen
                // Profile
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      _index = 3;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home,
                        color: _index == 3 ? Colors.blue : Colors.grey,
                      ),
                      Text(
                        "Home",
                        style: TextStyle(
                          color: _index == 3 ? Colors.blue : Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
