import 'package:flutter/material.dart';
import 'package:clock_ui_app/clock/clock.dart';
import 'package:clock_ui_app/clock/clock_text.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Clock',
      theme: new ThemeData(

        primarySwatch: Colors.blue,
      ),

      home: new AppClock(),
    );
  }
}


class AppClock extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            new Clock(
                circleColor: Colors.black,
                showBellsAndLegs: true,
                bellColor: Colors.green,
                clockText: ClockText.arabic,
                showHourHandleHeartShape: false,
            ),
          ],
        ),
      ),
    );
  }
}


