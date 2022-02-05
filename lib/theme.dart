import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    appBarTheme: const AppBarTheme(elevation: 1.5),
    colorScheme: const ColorScheme.light(
      primary: Color(0xff03DDF0),
      primaryVariant: Color(0xfff2f2f2),
      secondary: Color(0xff03DDF0),
      secondaryVariant: Colors.black,
      background: Colors.white,
      brightness: Brightness.light,
    ),
    textTheme: const TextTheme(
        headline1: TextStyle(
          color: Colors.black,
          fontSize: 36,
          fontFamily: 'GothamRounded',
        ),
        headline2: TextStyle(
            color: Colors.black, fontSize: 25, fontFamily: 'GothamRounded'),
        bodyText1: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        bodyText2: TextStyle(color: Colors.black)),
  );
}

ThemeData darkTheme() {
  return ThemeData(
    appBarTheme: const AppBarTheme(elevation: 1.5),
    colorScheme: const ColorScheme.dark(
      primary: Color(0xff181818),
      primaryVariant: Color(0xff202020),
      secondary: Color(0xff00D0C4),
      secondaryVariant: Colors.white,
      background: Color(0xff202020),
      //background: Colors.black,
      brightness: Brightness.dark,
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(
        color: Colors.white,
        fontSize: 36,
        fontFamily: 'GothamRounded',
      ),
      headline2: TextStyle(
          color: Colors.white, fontSize: 25, fontFamily: 'GothamRounded'),
      bodyText1: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      bodyText2: TextStyle(color: Colors.white),
    ),
  );
}
