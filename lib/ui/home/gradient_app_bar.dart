import 'package:flutter/material.dart';

class GradientAppBar extends StatelessWidget {
  GradientAppBar({this.title});

  final String title;
  final double barHeight = 66.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: barHeight,
      decoration: BoxDecoration(
        color: Colors.blue,
      ),
      child: Center(
        child: Text(title),
      ),
    );
  }
}
