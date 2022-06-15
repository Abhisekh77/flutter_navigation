import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:travelapp/pages/homepage.dart';
import 'package:travelapp/pages/secondpage.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'My Name Is Abhi',
              style:
                  TextStyle(fontSize: 40, color: Color.fromARGB(255, 0, 0, 0)),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              child: Text(
                'secondpage',
                style: TextStyle(fontSize: 40),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SecondPage();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
