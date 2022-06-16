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
          child: Column(
        children: [
          Container(
            height: 500,
            width: double.infinity,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 9.0,
                    blurStyle: BlurStyle.outer),
              ],
              borderRadius: BorderRadius.circular(24),
              color: Colors.blue,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1592743263126-bb241ee76ac7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bmF0dXJhbCUyMGJhY2tncm91bmR8ZW58MHx8MHx8&w=1000&q=80 '),
              ),
            ),
          ),
          // Image.network(
          //     'https://i.pinimg.com/550x/94/fb/9e/94fb9e94f0db7e3d429df2d9c64527d2.jpg'),
          // ElevatedButton(
          //   child: Text('firstpagee', style: TextStyle(fontSize: 40)),
          //   onPressed: () {
          //     Navigator.pop(context);
          //   },
          // ),
          // Image.network(
          //     'https://i.pinimg.com/550x/94/fb/9e/94fb9e94f0db7e3d429df2d9c64527d2.jpg'),
        ],
      )),
    );
  }
}
