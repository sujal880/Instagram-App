import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_series/Screens/Heart/heartscreen.dart';
import 'package:instagram_series/Screens/Home/homescreen.dart';
import 'package:instagram_series/Screens/Post/postscreen.dart';
import 'package:instagram_series/Screens/Profile/profilescreen.dart';
import 'package:instagram_series/Screens/Search/searchscreen.dart';
import 'package:instagram_series/Widgets/uihelper.dart';

class BottomNavScreen extends StatefulWidget {
  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex = 0;
  List<Widget> pages = [
    HomeScreen(),
    SearchScreen(),
    PostScreen(),
    HeartScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        selectedLabelStyle: TextStyle(color: Colors.white),
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.black,

        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(
              icon:  Icon(Icons.search),label: "Search"),
          BottomNavigationBarItem(
              icon:  Icon(CupertinoIcons.plus_app),label: "Post"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.heart),label: "Heart"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),label: "Profile"),
        ],
      ),
      body: IndexedStack(
        children: pages,
        index: currentIndex,
      ),
    );
  }
}
