import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Chart extends StatefulWidget {
  @override
  _ChartState createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: LineChart(
        LineChartData(
          extraLinesData: ExtraLinesData(
            extraLinesOnTop: true,
          ),
          gridData: FlGridData(
            drawHorizontalLine: false,
          ),
          titlesData: FlTitlesData(
            show: false,
          ),
          borderData: FlBorderData(
            show: false,
          ),
          lineBarsData: [
            LineChartBarData(
              colors: [Colors.greenAccent],
              dotData: FlDotData(show: false,),
              spots: [
                FlSpot(0, 0),
                FlSpot(1, 2),
                FlSpot(2, 4),
                FlSpot(3, 8),
                FlSpot(4, 16),
              ]
            )
          ]
        ),
      ),
    );
  }
}
