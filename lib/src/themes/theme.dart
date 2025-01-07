import 'package:flutter/material.dart';
import 'light_color.dart';

class AppTheme {
  const AppTheme();
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: LightColor.background,
    primaryColor: LightColor.background,
    cardTheme: const CardTheme(color: LightColor.background),
    textTheme: const TextTheme(
      bodySmall: TextStyle(color: LightColor.black),
      bodyMedium: TextStyle(color: LightColor.black),
      bodyLarge: TextStyle(color: LightColor.black),
    ),
    iconTheme: const IconThemeData(color: LightColor.iconColor),
    bottomAppBarTheme: const BottomAppBarTheme(
      color: LightColor.grey
    ),
    dividerColor: LightColor.lightGrey,
    primaryTextTheme: const TextTheme(
      bodySmall: TextStyle(color: LightColor.black),
      bodyMedium: TextStyle(color: LightColor.black),
      bodyLarge: TextStyle(color: LightColor.black),
    )
  );

  // text style
  static TextStyle titleStyle = const TextStyle(
    color: LightColor.titleTextColor, fontSize: 16
  );
  static TextStyle subTitleStyle = const TextStyle(
      color: LightColor.subTitleTextColor, fontSize: 12
  );
  static TextStyle h1Style = const TextStyle(fontSize: 24, fontWeight: FontWeight.bold);
  static TextStyle h2Style = const TextStyle(fontSize: 22);
  static TextStyle h3Style = const TextStyle(fontSize: 20);
  static TextStyle h4Style = const TextStyle(fontSize: 18);
  static TextStyle h5Style = const TextStyle(fontSize: 16);
  static TextStyle h6Style = const TextStyle(fontSize: 14);

  // shadow
  static List<BoxShadow> shadow = <BoxShadow>[
    BoxShadow(color: Color(0xfff8f8f8), blurRadius: 10, spreadRadius: 15)
  ];

  // padding
  static EdgeInsets padding = const EdgeInsets.symmetric(horizontal: 20, vertical: 10);
  static EdgeInsets hadding = const EdgeInsets.symmetric(horizontal: 10);

  // height width
  static double fullWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
  static double fullHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}