import "package:flutter/material.dart";
import "package:logistics_optimizer_app/theme/widgets_theme/text_theme.dart";


class TAppTheme {

   //Making it Private!

  static ThemeData OrangeLightTheme = ThemeData(
    appBarTheme: AppBarTheme(backgroundColor: Colors.deepPurple),
    colorScheme: ColorScheme.light().copyWith(
        primary: Colors.deepPurple,
        primaryContainer: Colors.deepPurple,
        ),
    brightness: Brightness.light,

    textTheme: TTextTheme.LightTextTheme,
    );

  static ThemeData OrangeDarkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme:  ColorScheme.dark(primary: Colors.grey),
  );
}
