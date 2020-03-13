import 'package:flutter/material.dart';
import 'PlaceholderWidget.dart';
import 'view/gift_view.dart';
import 'view/profile_view.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    PlaceholderWidget(Colors.white),
    PlaceholderWidget(Colors.deepOrange),
    GiftView(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home , color: Colors.blue),
        title: new Text("Home", style: new TextStyle(
            color: Colors.blue, fontSize: 14.0)),

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications, color: Colors.blue),
            title: Text('Notification', style: new TextStyle(
                color: Colors.blue, fontSize: 14.0)),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.gif, color: Colors.blue),
              title: Text('Gift', style: new TextStyle(
                  color: Colors.blue, fontSize: 14.0))
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.blue),
              title: Text('User', style: new TextStyle(
                  color: Colors.blue, fontSize: 14.0))

          )
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}