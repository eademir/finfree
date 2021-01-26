import 'package:finfree/constant/constant.dart';
import 'package:flutter/material.dart';

//just UI, nothing more.

class Top extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      width: double.maxFinite,
      decoration: kBoxDecoration.copyWith(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'FinFree',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '8,02₺',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.greenAccent,
                  ),
                ),
                Text(
                  '%1.81 Artış',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.greenAccent,
                  ),
                ),
                Text('%54 Yıllık Değişim'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
