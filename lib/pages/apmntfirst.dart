import 'package:flutter/material.dart';
import 'package:travelapp/pages/firstpage.dart';
import 'package:travelapp/pages/secondpage.dart';

class Appointment extends StatelessWidget {
  const Appointment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text('Appointment'),
      ),
      body: SafeArea(
          child: Center(
        child: ElevatedButton(
          child: Column(
            children: [
              ElevatedButton(
                child: Image.asset(
                  'assets/appointment1.png',
                  height: 300,
                  width: 400,
                ),
                // Text('continue', style: TextStyle(fontSize: 40)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return FirstPage();
                  }));
                },
              ),
              SizedBox(
                height: 40,
              ),
              Image.asset(
                'assets/appointment2.png',
                height: 300,
                width: 400,
              ),
            ],
          ), // Image.asset,
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SecondPage();
            }));
          },
        ),
      )),
    );
  }
}
