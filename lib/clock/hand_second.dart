import 'dart:math';

import 'package:flutter/material.dart';



class SecondHandPainter extends CustomPainter{
  final Paint secondHandPaint;

  int seconds;

  SecondHandPainter({this.seconds}):
        secondHandPaint= new Paint() {
    secondHandPaint.color= Color(0xffff0764);
    secondHandPaint.style= PaintingStyle.stroke;
    secondHandPaint.strokeWidth= 4.0;

  }

  @override
  void paint(Canvas canvas, Size size) {
    final radius= size.width/2;
    canvas.save();

    canvas.translate(radius, radius);

    canvas.rotate(2*pi*this.seconds/60);

    Path path1= new Path();
    path1.moveTo(0.0, -radius * 0.93 );
    path1.lineTo(0.0, radius * 0.1);

    canvas.drawPath(path1, secondHandPaint);
    canvas.restore();
  }

  @override
  bool shouldRepaint(SecondHandPainter oldDelegate) {
    return this.seconds != oldDelegate.seconds;
  }
}