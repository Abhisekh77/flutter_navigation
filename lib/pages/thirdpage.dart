import 'package:flutter/material.dart';
import 'package:travelapp/pages/firstpage.dart';
import 'package:travelapp/pages/homepage.dart';
import 'package:travelapp/pages/secondpage.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class thirdpage extends StatefulWidget {
  // const thirdpage({Key? key}) : super(key: key);

  @override
  State<thirdpage> createState() => _thirdpageState();
}

class _thirdpageState extends State<thirdpage> {
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  List pages = [FirstPage(), SecondPage(), HomePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
          index: currentIndex,
          onTap: onTap,
          buttonBackgroundColor: Colors.orange,
          backgroundColor: Colors.greenAccent,
          items: [
            Icon(Icons.home),
            Icon(Icons.search),
            Icon(Icons.chat),
            //BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            //BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
          ]),
    );
  }
}
