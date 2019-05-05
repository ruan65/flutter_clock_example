import 'package:clock_ui_app/clock/clock_text.dart';
import 'package:flutter/material.dart';
import 'package:clock_ui_app/clock/clock_dial_painter.dart';
import 'package:clock_ui_app/clock/clock_hands.dart';

class ClockFace extends StatelessWidget {
  final DateTime dateTime;
  final ClockText clockText;

  ClockFace({this.clockText = ClockText.arabic, this.dateTime});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: AspectRatio(
          aspectRatio: 0.75,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xfff4f9fd),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(8, 0),
                    blurRadius: 13,
                    spreadRadius: 1,
                    color: Color(0xffd3e0f0),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
