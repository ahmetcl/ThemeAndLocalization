import 'package:flutter/material.dart';

enum Themes { Light, Dark }

final appThemeData = {
  Themes.Light: ThemeData(
    primaryColor: Colors.black,
    primarySwatch: Colors.blue,
    brightness: Brightness.light,
  ),
  Themes.Dark: ThemeData(
    primaryColor: Colors.black,
    primarySwatch: Colors.green,
    brightness: Brightness.dark,
  )
};
