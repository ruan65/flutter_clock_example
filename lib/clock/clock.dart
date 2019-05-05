import 'dart:async';
import 'dart:math';

import 'package:clock_ui_app/clock/clock_dial_painter.dart';
import 'package:clock_ui_app/clock/clock_hands.dart';
import 'package:clock_ui_app/clock/clock_text.dart';
import 'package:flutter/material.dart';
import 'package:clock_ui_app/clock/clock_face.dart';

typedef TimeProducer = DateTime Function();

class Clock extends StatefulWidget {
  final Color circleColor;
  final Color shadowColor;
  final ClockText clockText;
  final TimeProducer getCurrentTime;
  final Duration updateDuration;

  Clock(
      {this.circleColor = const Color(0xffe1ecf7),
      this.shadowColor = const Color(0xffd9e2ed),
      this.clockText = ClockText.arabic,
      this.getCurrentTime = getSystemTime,
      this.updateDuration = const Duration(seconds: 1)});

  static DateTime getSystemTime() {
    return DateTime.now();
  }

  @override
  State<StatefulWidget> createState() {
    return _Clock();
  }
}

class _Clock extends State<Clock> {
  Timer _timer;
  DateTime dateTime;

  @override
  void initState() {
    super.initState();
    dateTime = DateTime.now();
    this._timer = Timer.periodic(widget.updateDuration, setTime);
  }

  void setTime(Timer timer) {
    setState(() {
      dateTime = DateTime.now();
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.0,
      child: buildClockCircle(context),
    );
  }

  Container buildClockCircle(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.transparent,
        boxShadow: [
          BoxShadow(
            offset: Offset(0.0, 5.0),
            blurRadius: 0,
            color: widget.circleColor
          ),
          BoxShadow(
            offset: Offset(0.0, 5.0),
            color: widget.shadowColor,
            blurRadius: 10,
            spreadRadius: -8,
          )
        ],
      ),
      child: Stack(children: [
        ClockFace(
          clockText: widget.clockText,
          dateTime: dateTime,
        ),

        //dial and numbers

        Container(
          padding: EdgeInsets.all(25),
          width: double.infinity,
          child: CustomPaint(
            painter: ClockDialPainter(clockText: widget.clockText),
          ),
        ),
        ClockHands(dateTime: dateTime),

        //centerpoint
        Center(
          child: Container(
            width: 10.0,
            height: 10.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffff0764),
            ),
          ),
        ),
      ]),
    );
  }
}
