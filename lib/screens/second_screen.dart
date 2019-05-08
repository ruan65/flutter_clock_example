import 'package:flutter/material.dart';

class SecondSreen extends StatelessWidget {
  final double _smallFontSize = 11;
  final double _valFontSize = 25;
  final FontWeight _smallFontWeight = FontWeight.w500;
  final FontWeight _valFontWeight = FontWeight.w700;
  final Color _fontColor = Color(0xff5b6990);
  final double _smallFontSpacing = 1.3;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
      alignment: Alignment.topCenter,
      child: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("AVERAGE SLEEP",
                      style: TextStyle(
                        fontWeight: _smallFontWeight,
                        fontSize: _smallFontSize,
                        letterSpacing: _smallFontSpacing,
                        color: _fontColor,
                      )),
                  SizedBox(height: 10),
                  Text("6.45h",
                      style: TextStyle(
                        fontWeight: _valFontWeight,
                        fontSize: _valFontSize,
                        color: _fontColor,
                      )),
                  SizedBox(height: 30),
                  Text("AVERAGE SLEEP",
                      style: TextStyle(
                        fontWeight: _smallFontWeight,
                        fontSize: _smallFontSize,
                        letterSpacing: _smallFontSpacing,
                        color: _fontColor,
                      )),
                  SizedBox(height: 10),
                  Text("6.45h",
                      style: TextStyle(
                        fontWeight: _valFontWeight,
                        fontSize: _valFontSize,
                        color: _fontColor,
                      )),
                ],
              ),
              Container(
                height: 170,
                width: 170,
                decoration: BoxDecoration(
                  color: Color(0xfff0f5fb),
                  border: Border.all(
                    width: 8,
                    color: Color(0xffd3e1ed),
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'THIS WEEK',
                      style: TextStyle(
                          color: _fontColor,
                          fontSize: _smallFontSize,
                          fontWeight: _smallFontWeight,
                          letterSpacing: _smallFontSpacing),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 120,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      width: double.infinity,
                      child: CustomPaint(
                        foregroundPainter: GraphPainter(),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 25,
          ),
          RecrordItem(
              fontColor: _fontColor,
              smallFontSpacing: _smallFontSpacing,
              day: 'SUNDAY'),
          RecrordItem(
              fontColor: _fontColor,
              smallFontSpacing: _smallFontSpacing,
              day: 'MONDAY'),
          RecrordItem(
              fontColor: _fontColor,
              smallFontSpacing: _smallFontSpacing,
              day: 'TUESDAY'),
          RecrordItem(
              fontColor: _fontColor,
              smallFontSpacing: _smallFontSpacing,
              day: 'WEDNESDAY'),
          RecrordItem(
              fontColor: _fontColor,
              smallFontSpacing: _smallFontSpacing,
              day: 'THURSDAY'),
          RecrordItem(
              fontColor: _fontColor,
              smallFontSpacing: _smallFontSpacing,
              day: 'FRIDAY'),
          RecrordItem(
              fontColor: _fontColor,
              smallFontSpacing: _smallFontSpacing,
              day: 'SUTURDAY'),
        ],
      ),
    );
  }
}

class RecrordItem extends StatelessWidget {
  final Color _fontColor;
  final String day;
  final double _smallFontSpacing;

  const RecrordItem({
    Key key,
    @required Color fontColor,
    @required String this.day,
    @required double smallFontSpacing,
  })  : _fontColor = fontColor,
        _smallFontSpacing = smallFontSpacing,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(width: 1.5, color: Color(0xffdde9f7)))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            day,
            style: TextStyle(
              fontSize: 16,
              color: _fontColor,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: <Widget>[
              Text(
                '01/21/2019',
                style: TextStyle(
                    fontSize: 13,
                    letterSpacing: _smallFontSpacing,
                    color: _fontColor),
              ),
              SizedBox(
                width: 25,
              ),
              Expanded(
                child: Text(
                  '45.3 MINUTES',
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      letterSpacing: _smallFontSpacing,
                      color: _fontColor),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class GraphPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return null;
  }

}
