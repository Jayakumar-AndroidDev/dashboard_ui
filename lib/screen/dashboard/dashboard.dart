import 'package:blog_vis_ui/screen/mobile/dashboard_mobile.dart';
import 'package:blog_vis_ui/screen/tablet/dashboard_tablet.dart';
import 'package:blog_vis_ui/screen/web/dashboard_web.dart';
import 'package:blog_vis_ui/widget/responsive.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: DashboardMobile(),
      tablet: DashboardTablet(),
      web: DashboardWeb(),
    );
  }
}
