import 'package:blog_vis_ui/controller/side_menu_controller.dart';
import 'package:blog_vis_ui/widget/dashboard_header.dart';
import 'package:blog_vis_ui/widget/market_widget.dart';
import 'package:blog_vis_ui/widget/members_widget.dart';
import 'package:blog_vis_ui/widget/over_all_status_widget.dart';
import 'package:blog_vis_ui/widget/overview_widget.dart';
import 'package:blog_vis_ui/widget/profit_status_widget_holder.dart';
import 'package:blog_vis_ui/widget/sales_this_week_widget.dart';
import 'package:blog_vis_ui/widget/side_menu.dart';
import 'package:blog_vis_ui/widget/sub_header.dart';
import 'package:blog_vis_ui/widget/users_widet.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class DashboardMobile extends StatelessWidget {
  const DashboardMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final key = Provider.of<SideMenuController>(context);
    return Scaffold(
      drawer: const SideMenu(),
      key: key.getKey,
      appBar: AppBar(
        title: const Header(),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SubHeader(),
              Row(
                children: [
                  OverAllStatusWidget(
                    containerColor: Colors.teal,
                    title: 'Capacity',
                    value: '110GB',
                    icon: Icons.auto_awesome_motion_outlined,
                  ),
                  Gap(10),
                  OverAllStatusWidget(
                    containerColor: Colors.green,
                    title: 'Revenue',
                    value: '\$2,169',
                    icon: Icons.account_balance_outlined,
                  ),
                ],
              ),
              Gap(10),
              Row(
                children: [
                  OverAllStatusWidget(
                    containerColor: Colors.red,
                    title: 'Blog',
                    value: '139',
                    icon: Icons.currency_bitcoin_sharp,
                  ),
                  Gap(10),
                  OverAllStatusWidget(
                    containerColor: Colors.orange,
                    title: 'Followers',
                    value: '129K',
                    icon: Icons.person_2_outlined,
                  ),
                ],
              ),
              Gap(10),
              ProfitStatusWidgetWidgetHolder(
                flex: 1,
                coverHeightPercentage: 0.30,
              ),
              Gap(10),
              Row(
                children: [
                  SalesThisWeekWidget(flex: 1),
                  Gap(10),
                  MarketWidget(flex: 1)
                ],
              ),
              Gap(10),
              OverViewWidget(
                flex: 1,
              ),
              Gap(10),
              MembersWidget(
                flex: 1,
              ),
              Gap(10),
              UsersWidget(
                flex: 1,
              )
            ],
          ),
        ),
      ),
    );
  }
}
