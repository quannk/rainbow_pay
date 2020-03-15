import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:rainbow_pay/view/gift_view.dart';

import 'PlaceholderWidget.dart';
import 'view/gallery/main_gal.dart';
import 'view/profile_view.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;

  List<GButton> tabs = new List();
  List<Color> colors = [
    Colors.purple,
    Colors.pink,
    Colors.amber[600],
    Colors.teal,
    Colors.lightBlue
  ];

  int _currentIndex = 0;
  final List<Widget> _children = [
    PlaceholderWidget(Colors.white),
    PlaceholderWidget(Colors.deepOrange),
    GiftView(),
    ProfileView(),
  ];

  @override
  void initState() {
    super.initState();

    var padding = EdgeInsets.symmetric(horizontal: 20, vertical: 5);
    double gap = 5;

    tabs.add(GButton(
      gap: gap,
      iconActiveColor: Colors.blue,
      iconColor: Colors.black,
      textColor: Colors.blue,
      backgroundColor: Colors.lightBlue.withOpacity(.2),
      iconSize: 24,
      padding: padding,
      icon: LineIcons.home,
      // textStyle: t.textStyle,
      text: 'Home',
    ));

    tabs.add(GButton(
      gap: gap,
      iconActiveColor: Colors.pink,
      iconColor: Colors.black,
      textColor: Colors.pink,
      backgroundColor: Colors.pink.withOpacity(.2),
      iconSize: 24,
      padding: padding,
      icon: LineIcons.heart_o,
      // textStyle: t.textStyle,
      text: 'Likes',
    ));

    tabs.add(GButton(
      gap: gap,
      iconActiveColor: Colors.amber[600],
      iconColor: Colors.black,
      textColor: Colors.amber[600],
      backgroundColor: Colors.amber[600].withOpacity(.2),
      iconSize: 24,
      padding: padding,
      icon: LineIcons.search,
      // textStyle: t.textStyle,
      text: 'Search',
    ));

    tabs.add(GButton(
      gap: gap,
      iconActiveColor: Colors.teal,
      iconColor: Colors.black,
      textColor: Colors.teal,
      backgroundColor: Colors.teal.withOpacity(.2),
      iconSize: 24,
      padding: padding,
      icon: LineIcons.user,
      // textStyle: t.textStyle,
      text: 'Profile',
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Center(
        child: _children.elementAt(selectedIndex),
      ),      bottomNavigationBar: Container(

        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.1))
        ]),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
                gap: 8,
                activeColor: Colors.white,
                iconSize: 24,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                duration: Duration(milliseconds: 800),
                tabBackgroundColor: Colors.grey[800],
                tabs: tabs,
                selectedIndex: selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                }),
          ),
        ),
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
