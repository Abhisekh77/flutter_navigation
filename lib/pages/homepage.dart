import 'package:flutter/material.dart';
import 'package:travelapp/pages/firstpage.dart';
import 'package:travelapp/pages/thirdpage.dart';
import 'package:travelapp/pages/apmntfirst.dart';
import 'package:travelapp/pages/login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home Page',
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('LOGIN PAGE', style: TextStyle(fontSize: 40)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginPage();
                  // return ChewieDemo();
                }));
              },
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              child: Text('Appointment', style: TextStyle(fontSize: 40)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Appointment();
                }));
              },
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              child: Text('THIRD paGE', style: TextStyle(fontSize: 40)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return thirdpage();
                }));
              },
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      )),
    );
  }
}
