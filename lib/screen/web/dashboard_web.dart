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
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

class DashboardWeb extends StatelessWidget {
  const DashboardWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(
      //   title: const Header(),
      // ),
      body: Row(
        children: [
          SideMenu(),
          Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Header(),
                  Gap(10),
                  SizedBox(
                    child: Column(
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
                            Gap(10),
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
                            )
                          ],
                        ),
                        Gap(10),
                        Row(
                          children: [
                            ProfitStatusWidgetWidgetHolder(
                              flex: 2,
                            ),
                            Gap(10),
                            SalesThisWeekWidget(
                              flex: 1,
                            ),
                            Gap(10),
                            MarketWidget(
                              flex: 1,
                            ),
                          ],
                        ),
                        Gap(10),
                        Row(
                          children: [
                            OverViewWidget(
                              flex: 2,
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
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
