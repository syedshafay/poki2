import 'package:flutter/material.dart';

const MaterialColor brandingColor = MaterialColor(
  brandingPrimaryColor,
  <int, Color>{
    50: Color.fromRGBO(0, 0, 0, 0.1),
    100: Color.fromRGBO(0, 0, 0, 0.2),
    200: Color.fromRGBO(0, 0, 0, 0.3),
    300: Color.fromRGBO(0, 0, 0, 0.4),
    400: Color.fromRGBO(0, 0, 0, 0.5),
    500: Color(brandingPrimaryColor),
    600: Color.fromRGBO(0, 0, 0, 0.7),
    700: Color.fromRGBO(0, 0, 0, 0.8),
    800: Color.fromRGBO(0, 0, 0, 0.9),
    900: Color.fromRGBO(0, 0, 0, 1),
  },
);
const int brandingPrimaryColor = 0xFF000000;
