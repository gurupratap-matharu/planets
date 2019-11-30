import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final kBaseTextStyle = const TextStyle(
  fontFamily: 'Poppins',
);

final kHeaderTextStyle = kBaseTextStyle.copyWith(
  color: Colors.white,
  fontSize: 18.0,
  fontWeight: FontWeight.w600,
);

final kRegularTextStyle = kBaseTextStyle.copyWith(
  color: Color(0xFFB6B2DF),
  fontSize: 9.0,
  fontWeight: FontWeight.w400,
);

final kSubHeaderTextStyle = kBaseTextStyle.copyWith(
  fontSize: 12.0,
);
