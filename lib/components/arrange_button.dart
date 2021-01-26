import 'package:finfree/controllers/Store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ArrangeButton extends StatelessWidget {
  ArrangeButton({
    @required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Consumer<Store>(
      builder: (context, store, child) => Expanded(
        child: Padding(
          padding: EdgeInsets.all(2.5),
          child: ButtonTheme(
            padding: EdgeInsets.all(0),
            height: 30,
            // it's comparing text with stored text
            buttonColor: text == store.arrange ? Colors.green : Colors.white,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                '$text',
                style: TextStyle(
                  // same
                  color: text == store.arrange ? Colors.white : Colors.black,
                ),
              ),
              onPressed: () {
                store.changeArrange(text: text);
                store.getSpots();
              },
            ),
          ),
        ),
      ),
    );
  }
}
