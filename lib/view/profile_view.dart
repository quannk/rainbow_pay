import 'package:flutter/material.dart';
import 'info_card.dart';

const url = 'http://thinkdiff.net';
const email = 'QuanNK.cap@gmail.com';
const phone = '+84 976544494';

class ProfileView extends StatelessWidget {
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
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/2.jpg'),
            ),
            Text(
              'Nguy Khac Quan',
              style: TextStyle(
                fontSize: 40.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: 'Pacifico',
              ),
            ),
            Text(
              'Software Engineer',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                fontSize: 30.0,
                color: Colors.black,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
              width: 200,
              child: Divider(
                color: Colors.white,
              ),
            ),
            InfoCard(
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
            InfoCard(
              text: email,
              icon: Icons.email,
              onPressed: () async {
                final emailAddress = 'mailto:$email';


                  _showDialog(
                    context,
                    title: 'Sorry',
                    msg: 'Email can not be send. Please try again!',
                  );

              },
            ),
            InfoCard(
              text: url,
              icon: Icons.web,
              onPressed: () async {

                  _showDialog(
                    context,
                    title: 'Sorry',
                    msg: 'URL can not be opened. Please try again!',
                  );

              },
            ),
            InfoCard(
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