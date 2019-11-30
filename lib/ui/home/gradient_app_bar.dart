import 'package:flutter/material.dart';

class GradientAppBar extends StatelessWidget {
  GradientAppBar({this.title});

  final String title;
  final double barHeight = 66.0;

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    return SafeArea(
      child: Container(
        height: statusBarHeight + barHeight,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF3366FF),
              Color(0xFF00CCFF),
            ],
            begin: FractionalOffset(0.25, 1.0),
            end: FractionalOffset(0.75, 0.5),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
          ),
          color: Colors.blue,
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              fontSize: 36.0,
            ),
          ),
        ),
      ),
    );
  }
}
