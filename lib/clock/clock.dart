import 'dart:async';
import 'dart:math';

import 'package:clock_ui_app/clock/clock_text.dart';
import 'package:flutter/material.dart';
import 'package:clock_ui_app/clock/clock_face.dart';

typedef TimeProducer = DateTime Function();

class Clock extends StatefulWidget {
  final Color circleColor;
  final Color bellColor;
  final Color legColor;
  final ClockText clockText;
  final TimeProducer getCurrentTime;
  final Duration updateDuration;

  Clock(
      {this.circleColor = Colors.black,
      this.bellColor = const Color(0xFF333333),
      this.legColor = const Color(0xFF555555),
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
        color: widget.circleColor,
        boxShadow: [
          BoxShadow(
            offset: Offset(0.0, 5.0),
            blurRadius: 5.0,
          )
        ],
      ),
      child: ClockFace(
        clockText: widget.clockText,
        dateTime: dateTime,
      ),
    );
  }
}
