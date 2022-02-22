// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onboarding/Screens/components/background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("HELLO WORLD", style: TextStyle(fontWeight: FontWeight.bold)),
          SvgPicture.asset("assets/icons/chat.svg", height: size.height * 0.5),
          TextButton(
            style: TextButton.styleFrom(
              primary: Colors.white,
              minimumSize: Size(88, 44),
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(40)),
              ),
              backgroundColor: Colors.blue,
            ),
            onPressed: () {
              print('Button pressed');
            },
            child: Text('FlatButton To TextButton Migration'),
          )
        ],
      ),
    );
  }
}
