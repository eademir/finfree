import 'package:finfree/controllers/Store.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:provider/provider.dart';

import 'arrange_buttons.dart';

class Chart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Store>(
      builder: (context, store, child) {
        if (store.values == null) {
          store.getSpots();
          return Center(
            child: Text('Loading...'),
          );
        } else {
          return Column(
            children: [
              Container(
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
                          show: true,
                          border: Border(
                            top: BorderSide(width: 0),
                            left: BorderSide(width: 0),
                            right: BorderSide(width: 0),
                            bottom: BorderSide(width: 1),
                          )),
                      lineBarsData: [
                        LineChartBarData(
                          colors: [Colors.greenAccent],
                          dotData: FlDotData(
                            show: false,
                          ),
                          spots: store.values,
                        ),
                      ]),
                ),
              ),
              ArrangeButtons(),
            ],
          );
        }
      },
    );
  }
}
