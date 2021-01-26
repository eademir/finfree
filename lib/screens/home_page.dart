import 'package:finfree/components/chart.dart';
import 'package:finfree/components/top.dart';
import 'package:flutter/material.dart';

//Main page.
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0x11AAAAAA),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Top(),
                SizedBox(
                  height: 8,
                ),
                Chart(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
