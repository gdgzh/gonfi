import 'package:flutter/material.dart';

final ThemeData GonfiThemeData = new ThemeData(
  brightness: Brightness.light,
  primarySwatch: new MaterialColor(
      GonfiTheme.sunsetOrange[500].value, GonfiTheme.nightPurple),
  primaryColor: GonfiTheme.sunsetOrange[500],
  accentColor: GonfiTheme.nightPurple[500],
  backgroundColor: Colors.white,
  textTheme: Typography(platform: TargetPlatform.android).black,
);

class GonfiTextTheme extends TextTheme {
  GonfiTextTheme();
}

class GonfiTheme {
  GonfiTheme._(); // this basically makes it so you can instantiate this class
  static const Map<int, Color> nightPurple = const <int, Color>{
    50: const Color(0xFFEDE7F6),
    100: const Color(0xFFD1C4E9),
    200: const Color(0xFFB39DDB),
    300: const Color(0xFF9475CD),
    400: const Color(0xFF7D58C2),
    500: const Color(0xFF663AB7),
    600: const Color(0xFF5E34B0),
    700: const Color(0xFF532CA7),
    800: const Color(0xFF49259F),
    900: const Color(0xFF381890)
  };

  static const Map<int, Color> sunsetOrange = const <int, Color>{
    50: const Color(0xFFFDEBE6),
    100: const Color(0xFFFBCDBF),
    200: const Color(0xFFF8AC95),
    300: const Color(0xFFF58A6B),
    400: const Color(0xFFF3714B),
    500: const Color(0xFFF1582B),
    600: const Color(0xFFEF5026),
    700: const Color(0xFFED4720),
    800: const Color(0xFFEB3D1A),
    900: const Color(0xFFE72D10)
  };
}
