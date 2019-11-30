import 'package:flutter/material.dart';
import 'package:planets/constants.dart';
import 'package:planets/models/planet.dart';

class PlanetRow extends StatelessWidget {
  PlanetRow({this.planet});

  final Planet planet;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      margin: EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 24.0,
      ),
      child: Stack(
        children: <Widget>[
          Container(
            height: 124.0,
            margin: EdgeInsets.only(
              left: 46.0,
            ),
            decoration: BoxDecoration(
              color: Color(0xFF333366),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10.0,
                  offset: Offset(0.0, 10.0),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 16.0,
            ),
            alignment: FractionalOffset.centerLeft,
            child: Image(
              image: AssetImage(planet.image),
              height: 92.0,
              width: 92.0,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(106.0, 16.0, 16.0, 16.0),
            constraints: BoxConstraints.expand(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 2.0,
                ),
                Text(
                  planet.name,
                  style: kHeaderTextStyle,
                ),
                Text(
                  planet.location,
                  style: kSubHeaderTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Container(
                    height: 2.0,
                    width: 18.0,
                    color: Color(0xFF00C6FF),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          Image.asset(
                            "assets/images/ic_distance.png",
                            height: 20,
                            width: 20,
                          ),
                          Container(
                            width: 8.0,
                          ),
                          Text(
                            planet.distance,
                            style: kRegularTextStyle,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          Image.asset(
                            "assets/images/ic_gravity.png",
                            height: 20,
                            width: 20,
                          ),
                          Container(
                            width: 8.0,
                          ),
                          Text(
                            planet.gravity,
                            style: kRegularTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
