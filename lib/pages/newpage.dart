import 'package:flutter/material.dart';
import 'package:travelapp/pages/login_page.dart';

class NewPage extends StatelessWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text('hello'),
      centerTitle: true,
    ));
  }
}
