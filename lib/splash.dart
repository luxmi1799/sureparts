import 'dart:async';
import 'package:flutter/material.dart';

import 'main.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    new Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyHomePage()),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(
                child: new Image.asset(
                  'assets/img.png',
                  fit: BoxFit.cover,
                  repeat: ImageRepeat.noRepeat,
                  width: 170.0,
                ),
              ),
              Text(
                "Maboalab",
                style: TextStyle(
                    fontSize: 27,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              )
            ]),
      ),
    );
  }
}
