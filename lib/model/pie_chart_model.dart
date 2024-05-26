import 'package:flutter/material.dart';

class PieChartModel {
  PieChartModel({
    required this.labelName,
    required this.value,
    required this.color,
  });
  final String labelName;
  final double value;
  final Color color;
}

List<PieChartModel> pieChartData = [
  PieChartModel(
    labelName: 'A',
    value: 20.0,
    color: Colors.red,
  ),
  PieChartModel(
    labelName: 'B',
    value: 25.0,
    color: Colors.yellow,
  ),
  PieChartModel(
    labelName: 'C',
    value: 40.0,
    color: Colors.orange,
  ),
  PieChartModel(
    labelName: 'D',
    value: 30.0,
    color: Colors.blue,
  ),
];
