import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget web;

  const Responsive({
    super.key,
    required this.mobile,
    required this.tablet,
    required this.web,
  });

  static bool isMobile(BuildContext context) => MediaQuery.of(context).size.width < 850;
  static bool isTablet(BuildContext context) => MediaQuery.of(context).size.width > 850 && MediaQuery.of(context).size.width <= 1100;
  static bool isWeb(BuildContext context) => MediaQuery.of(context).size.width >= 1100;
  

  @override
  Widget build(BuildContext context) {
    if(isMobile(context)){
      return mobile;
    }
    if(isTablet(context)){
      return tablet;
    }
    return web;
  }
}
