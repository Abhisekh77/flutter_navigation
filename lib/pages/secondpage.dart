import 'package:flutter/material.dart';
import 'package:travelapp/pages/firstpage.dart';
import 'package:travelapp/pages/homepage.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Myapp today"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'homepage',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
        ],
      ),
      body: SafeArea(
          child: Center(
        child: ElevatedButton(
          child: Text('firstpage', style: TextStyle(fontSize: 40)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      )),
    );
  }
}
