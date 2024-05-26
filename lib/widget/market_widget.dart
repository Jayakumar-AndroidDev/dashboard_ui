import 'package:blog_vis_ui/model/line_chart_model.dart';
import 'package:blog_vis_ui/widget/text_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class MarketWidget extends StatelessWidget {
  const MarketWidget({super.key, required this.flex});

  final int flex;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: flex,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.28,
        child: Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
                color: const Color.fromARGB(69, 158, 158, 158),
                borderRadius: BorderRadiusDirectional.circular(20)),
            child: Column(
              children: [
                const TextComponent(
                  text: 'Marketing',
                  alignment: Alignment.centerLeft,
                ),
                Expanded(
                  child: SfCartesianChart(
                    series: <CartesianSeries>[
                      LineSeries<LinechartModel,int>(
                        dataSource: listOfData1,
                        xValueMapper: (datum, index) => datum.year,
                        yValueMapper: (datum, index) => datum.value,
                      ),
                      LineSeries<LinechartModel,int>(
                        dataSource: listOfData2,
                        xValueMapper: (datum, index) => datum.year,
                        yValueMapper: (datum, index) => datum.value,
                      )
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
