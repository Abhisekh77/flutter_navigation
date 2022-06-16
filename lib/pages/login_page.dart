import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  void onPressed() {
    // form validation and submission logic here
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          SizedBox(height: 100),
          // TextField()   it is use to write text
          // TextFormField()  it is use to write text with validation
          Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(children: [
                CustomTextField('Email', Colors.green, Icon(Icons.email),
                    Icon(Icons.reddit)),
                CustomTextField('Password', Colors.green, Icon(Icons.password),
                    Icon(Icons.remove_red_eye)),
                ElevatedButton(onPressed: onPressed, child: Text('Submit'))

                // CustomTextField('Email', Icons.email),
                // CustomTextField('phone', Icons.phone),
                // CustomTextField('password', Icons.email),
              ]))
        ],
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String hintNmae;
  final Color color;
  final Icon icon;
  final Icon suffix;

  CustomTextField(this.hintNmae, this.color, this.icon, this.suffix);

  // final TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          // controller: ,
          decoration: InputDecoration(
              prefixIcon: icon,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: color),
              ),
              hintText: hintNmae,
              suffix: suffix),
        ),
        SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
