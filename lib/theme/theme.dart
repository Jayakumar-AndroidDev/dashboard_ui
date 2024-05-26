import 'package:blog_vis_ui/color/app_color.dart';
import 'package:flutter/material.dart';

class ThemeColor {
  static final lightThemeData = ThemeData(
    primaryColor: AppColor.scaffoldBackgroundLightColor,
    brightness: Brightness.light,
    textTheme: const TextTheme(
      titleMedium: TextStyle(fontSize: 25,color: AppColor.textLightColor)
    )
  );

  static final darkThemeData = ThemeData(
    primaryColor: AppColor.scaffoldBackgroundDarkColor,
    brightness: Brightness.dark,
    textTheme: const TextTheme(
      titleMedium: TextStyle(fontSize: 25,color: AppColor.textDarkColor)
    )
  );
}