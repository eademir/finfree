import 'package:flutter/material.dart';
import 'package:finfree/components/arrange_button.dart';

class ArrangeButtons extends StatelessWidget {
  ArrangeButtons({this.arrange});

  final String arrange;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ArrangeButton(
            text: '1G',
          ),
          ArrangeButton(
            text: '1H',
          ),
          ArrangeButton(
            text: '1A',
          ),
          ArrangeButton(
            text: '3A',
          ),
          ArrangeButton(
            text: '1Y',
          ),
          ArrangeButton(
            text: '5Y',
          ),
        ],
      ),
    );
  }
}
