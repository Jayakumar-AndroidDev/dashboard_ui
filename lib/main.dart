import 'package:blog_vis_ui/controller/side_menu_controller.dart';
import 'package:blog_vis_ui/screen/dashboard/dashboard.dart';
import 'package:blog_vis_ui/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SideMenuController(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeColor.lightThemeData,
        darkTheme: ThemeColor.darkThemeData,
        themeMode: ThemeMode.dark,
        home: const Dashboard(),
      ),
    ),
  );
}
