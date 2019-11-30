import 'package:flutter/material.dart';
import 'package:planets/ui/home/planet_row.dart';
import 'package:planets/models/planet_data.dart';

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlanetRow(
      planet: planets[0],
    );
  }
}
