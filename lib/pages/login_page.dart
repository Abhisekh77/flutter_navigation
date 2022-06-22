// import 'package:flutter/material.dart';

// class LoginPage extends StatelessWidget {
//   const LoginPage({Key? key}) : super(key: key);
//   void onPressed() {
//     // form validation and submission logic here
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//         shrinkWrap: true,
//         children: [
//           SizedBox(height: 100),
//           // TextField()   it is use to write text
//           // TextFormField()  it is use to write text with validation
//           Padding(
//               padding: EdgeInsets.all(8.0),
//               child: Column(children: [
//                 CustomTextField('Email', Colors.green, Icon(Icons.email),
//                     Icon(Icons.reddit)),
//                 CustomTextField('Phone', Colors.green, Icon(Icons.phone),
//                     Icon(Icons.reddit)),
//                 CustomTextField('Password', Colors.green, Icon(Icons.password),
//                     Icon(Icons.remove_red_eye)),
//                 ElevatedButton(onPressed: onPressed, child: Text('Login'))

//                 // CustomTextField('Email', Icons.email),
//                 // CustomTextField('phone', Icons.phone),
//                 // CustomTextField('password', Icons.email),
//               ]))
//         ],
//       ),
//     );
//   }
// }

// class CustomTextField extends StatelessWidget {
//   final String hintNmae;
//   final Color color;
//   final Icon icon;
//   final Icon suffix;

//   CustomTextField(this.hintNmae, this.color, this.icon, this.suffix);

//   // final TextEditingController emailController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         TextFormField(
//           // controller: ,
//           decoration: InputDecoration(
//               prefixIcon: icon,
//               enabledBorder: OutlineInputBorder(
//                 borderSide: BorderSide(width: 1, color: color),
//               ),
//               hintText: hintNmae,
//               suffix: suffix),
//         ),
//         SizedBox(
//           height: 5,
//         ),
//       ],
//     );
//   }
// }

//SUJAL CODE
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:travelapp/pages/homepage.dart';
import 'package:travelapp/pages/login_page.dart';
import 'package:travelapp/pages/newpage.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isVisible = true;
  var getname = '';
  var getpassword = '';
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController usernamecontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                CustomTextField(
                  hintText: 'email',
                  icon: Icons.email,
                  suffixIcon: Icons.reddit,
                  controller: emailcontroller,
                ),
                CustomTextField(
                  hintText: 'Username',
                  icon: Icons.people,
                  suffixIcon: Icons.reddit,
                  controller: usernamecontroller,
                ),
                CustomTextField(
                  hintText: 'password',
                  icon: Icons.lock,
                  suffixIcon: Icons.remove_red_eye,
                  controller: passwordcontroller,
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                ElevatedButton(
                  child: Text('Login'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return NewPage();
                    }));
                    // setState(() {
                    //   getname = emailcontroller.text;
                    //   getpassword = passwordcontroller.text;
                    // });
                    // print(emailcontroller.text.toString());
                    // print(usernamecontroller.text.toString());
                    // print(passwordcontroller.text.toString());
                  },
                ),
                Text(
                  getname,
                  style: TextStyle(fontSize: 40),
                ),
                Text(
                  'password=$getpassword',
                  style: TextStyle(fontSize: 40),
                )
              ],
            ),
            alignment: Alignment.center,
          )
        ],
      ),
    );
  }
}

class CustomTextField extends StatefulWidget {
  CustomTextField({
    required this.hintText,
    required this.icon,
    this.suffixIcon,
    this.controller,
  });

  final String hintText;
  final IconData icon;
  final IconData? suffixIcon;
  final controller;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller, //stateful ma controller lekhe hunxa tara
      //stateless ma chai widget.controller lekhna parne hunxa la
      obscureText: isVisible,
      decoration: InputDecoration(
        hintText: widget.hintText,
        prefixIcon: Icon(widget.icon),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: Colors.blue,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        // labelText: hintText,
        suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                isVisible = !isVisible;
                print(isVisible);
              });
              print(isVisible);
            },
            icon: Icon(
                isVisible == true ? Icons.visibility : Icons.visibility_off)),
      ),
    );
  }
}
