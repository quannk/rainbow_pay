import 'package:flutter/material.dart';

class GiftCard extends StatelessWidget {
  final String text;
  final String time;
  final IconData icon;
  Function onPressed;

  GiftCard({
    @required this.text,
    @required this.icon,
    @required this.time,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onPressed,
        child: SizedBox(
            width: double.infinity,
            height: 300,
            child: Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/galaxy.jpg"),
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                  ),
                ),
                child: ListTile(
                  leading: Icon(
                    icon,
                    color: Colors.blue,
                  ),
                  title: Text(
                    text,
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )));
  }
}
