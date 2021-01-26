import 'package:finfree/controllers/api_handler.dart';
import 'package:finfree/controllers/spots.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Chart extends StatefulWidget {
  @override
  _ChartState createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  ApiHandler _apiHandler = ApiHandler();
  List<Spots> _spots;
  List<FlSpot> _values;
  bool loading = true;
  String arrange = '1G';

  void getSpots() async {
    _spots = await _apiHandler.getData(arrange: arrange);
    _values = _spots.map((e) => FlSpot(e.d, e.c)).toList();
    setState(() {
      loading = false;
    });
  }

  @override
  void initState() {
    getSpots();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (loading) {
      return Text('Loading...');
    } else {
      return Container(
        color: Colors.white,
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
                  dotData: FlDotData(
                    show: false,
                  ),
                  spots: _values,
                ),
              ]),
        ),
      );
    }
  }
}
