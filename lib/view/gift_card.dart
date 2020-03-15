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
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
        onTap: onPressed,
        child: SizedBox(
          width: double.infinity,
          height: 300,
          child: Container(
            height: 250,
            width: 170,
            child: Stack(
              children: <Widget>[
                Center(
                  child: new Image.asset(
                    'assets/images/gallery.jpg',
                    width: size.width,
                    height: size.height,
                    fit: BoxFit.fill,
                  ),
                ),
                Center(
                  child: Text("This is a Text",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28.0,
                          color: Colors.white)),
                ),
              ],
            ),
          ),
        )
    );
  }
}
