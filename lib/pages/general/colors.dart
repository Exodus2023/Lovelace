import 'package:flutter/material.dart';

const MaterialColor primary = MaterialColor(_primaryPrimaryValue, <int, Color>{
  50: Color(0xFFFFEDF6),
  100: Color(0xFFFFD2E9),
  200: Color(0xFFFFB4DA),
  300: Color(0xFFFF96CB),
  400: Color(0xFFFF80BF),
  500: Color(_primaryPrimaryValue),
  600: Color(0xFFFF61AD),
  700: Color(0xFFFF56A4),
  800: Color(0xFFFF4C9C),
  900: Color(0xFFFF3B8C),
});
const int _primaryPrimaryValue = 0xFFFF69B4;

const MaterialColor primaryAccent = MaterialColor(_primaryAccentValue, <int, Color>{
  100: Color(0xFFFFFFFF),
  200: Color(_primaryAccentValue),
  400: Color(0xFFFFE4EF),
  700: Color(0xFFFFCADF),
});
const int _primaryAccentValue = 0xFFFFFFFF;