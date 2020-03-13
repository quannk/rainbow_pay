import 'package:flutter/material.dart';
import 'info_card.dart';
import 'package:rainbow_pay/view/gift_card.dart';

const url = 'http://thinkdiff.net';
const email = 'QuanNK.cap@gmail.com';
const phone = '+84 976544494';

class GiftView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  void _showDialog(BuildContext context, {String title, String msg}) {
    final dialog = AlertDialog(
      title: Text(title),
      content: Text(msg),
      actions: <Widget>[
        RaisedButton(
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            'Close',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
    showDialog(context: context, builder: (x) => dialog);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            GiftCard(
              text: phone,
              icon: Icons.phone,
              onPressed: () async {
                String removeSpaceFromPhoneNumber = phone.replaceAll(new RegExp(r"\s+\b|\b\s"), "");
                final phoneCall = 'tel:$removeSpaceFromPhoneNumber';


                  _showDialog(
                    context,
                    title: 'Sorry',
                    msg: 'Phone number can not be called. Please try again!',
                  );

              },
            ),
            GiftCard(
              text: "Giảm 150K khi mua từ 2 lon Boost Optimum 800g",
              icon: Icons.email,
              onPressed: () async {
              },
            ),
            GiftCard(
              text: "Giảm 8% tối đa 40K khi mua từ đơn hàng Gerber + Cerelac từ 250K",
              icon: Icons.web,
              onPressed: () async {
              },
            ),
            GiftCard(
              text: 'Ha Noi, Viet Nam',
              icon: Icons.location_city,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}