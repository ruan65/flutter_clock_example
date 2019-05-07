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

class AppClock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: double.infinity,
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(55),
              child: Container(
                color: Colors.transparent,
                child: SafeArea(
                  child: Column(
                    children: <Widget>[
                      TabBar(
                        indicatorWeight: 15,
                        indicatorSize: TabBarIndicatorSize.label,
                        labelColor: Color(0xff2d386b),
                        unselectedLabelColor: Colors.black26,
                        labelStyle: TextStyle(
                          fontSize: 12,
                          letterSpacing: 1.3,
                          fontWeight: FontWeight.w500,
                        ),
                        tabs: <Widget>[
                          Tab(
                            text: 'ALARMS',
                            icon: Icon(
                              Icons.watch_later,
                              size: 40,
                            ),
                          ),
                          Tab(
                            text: 'SETTINGS',
                            icon: Icon(
                              Icons.settings,
                              size: 40,
                            ),
                          ),
                          Tab(
                            text: 'PEOPLE',
                            icon: Icon(
                              Icons.people,
                              size: 40,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
