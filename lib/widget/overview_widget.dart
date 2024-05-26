import 'package:blog_vis_ui/model/bar_chart_model.dart';
import 'package:blog_vis_ui/widget/text_component.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class OverViewWidget extends StatelessWidget {
  const OverViewWidget({super.key, required this.flex});

  final int flex;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: flex,
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.28,
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: const Color.fromARGB(69, 158, 158, 158),
              borderRadius: BorderRadiusDirectional.circular(20),
            ),
            child: Column(
              children: [
                const TextComponent(
                  text: 'Overview',
                  alignment: Alignment.centerLeft,
                ),
                Expanded(
                  child: Center(
                    child: SfCartesianChart(
                      series: <CartesianSeries>[
                        ColumnSeries<BarChartModel, int>(
                          dataSource: listOfBar,
                          xValueMapper: (datum, index) => datum.index,
                          yValueMapper: (datum, index) => datum.value,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
