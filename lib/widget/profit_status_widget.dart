import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfitStatusWidget extends StatelessWidget {
  const ProfitStatusWidget({
    super.key,
    required this.mainTitle,
    required this.subTitle,
    required this.percentage,
    required this.value,
    required this.containerColor
  });

  final String mainTitle;
  final String subTitle;
  final String value;
  final String percentage;
  final Color containerColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [
            Colors.black,
            containerColor,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight
        ),
      ),
      child: Column(
        children: [
          Align(alignment: Alignment.centerLeft,child: Text(mainTitle)),
          Text(value),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(subTitle),
              Text(percentage)
            ],
          ),
        ],
      ),
    );
  }
}
