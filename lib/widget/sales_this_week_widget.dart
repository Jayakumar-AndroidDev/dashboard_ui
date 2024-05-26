import 'package:blog_vis_ui/model/pie_chart_model.dart';
import 'package:blog_vis_ui/widget/text_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class SalesThisWeekWidget extends StatelessWidget {
  const SalesThisWeekWidget({super.key, required this.flex});

  final int flex;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: flex,
      child:  Container(
        height: MediaQuery.of(context).size.height * 0.28,
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: const Color.fromARGB(69, 158, 158, 158),
              borderRadius: BorderRadiusDirectional.circular(20),
            ),
            child: Column(
              children: [
                const TextComponent(
                  text: 'Sales this week',
                  alignment: Alignment.centerLeft,
                ),
                   Expanded(
                     child: SfCircularChart(
                      series: <CircularSeries>[
                        DoughnutSeries<PieChartModel, String>(
                          dataLabelSettings: const DataLabelSettings(
                              isVisible: true, color: Colors.white),
                          dataSource: pieChartData,
                          xValueMapper: (datum, index) => datum.labelName,
                          yValueMapper: (datum, index) => datum.value,
                        )
                      ],
                                       ),
                   ),
              ],
            )),
    );
  }
}
