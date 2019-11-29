import 'package:flutter/material.dart';
import 'package:planets/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Planets",
      home: HomePage(),
    );
  }
}