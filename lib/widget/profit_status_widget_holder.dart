import 'package:blog_vis_ui/widget/profit_status_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

class ProfitStatusWidgetWidgetHolder extends StatelessWidget {
  const ProfitStatusWidgetWidgetHolder({super.key, required this.flex,this.coverHeightPercentage = 0.30});

  final int flex;
  final double coverHeightPercentage;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: flex,
      child: SizedBox(
          child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(69, 158, 158, 158),
                  borderRadius: BorderRadiusDirectional.circular(20)),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: ProfitStatusWidget(
                          mainTitle: 'Income status',
                          subTitle: 'New income',
                          percentage: '0%',
                          value: '\$3,259',
                          containerColor: Color.fromARGB(255, 0, 70, 63),
                        ),
                      ),
                      Gap(10),
                      Expanded(
                        flex: 1,
                        child: ProfitStatusWidget(
                          mainTitle: 'Order status',
                          subTitle: 'New order',
                          percentage: '10%',
                          value: '\$579',
                          containerColor: Color.fromARGB(255, 40, 94, 42),
                        ),
                      ),
                    ],
                  ),
                  Gap(10),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: ProfitStatusWidget(
                          mainTitle: 'Income status',
                          subTitle: 'New user',
                          percentage: '5%',
                          value: '\$322',
                          containerColor: Color.fromARGB(255, 107, 29, 24),
                        ),
                      ),
                      Gap(10),
                      Expanded(
                        flex: 1,
                        child: ProfitStatusWidget(
                          mainTitle: 'Total revenue',
                          subTitle: 'Income',
                          percentage: '12%',
                          value: '\$13,259',
                          containerColor: Color.fromARGB(255, 97, 58, 1),
                        ),
                      ),
                    ],
                  )
                ],
              )),
        ),
    );
  }
}
