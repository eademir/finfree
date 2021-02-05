import 'package:finfree/controllers/spots.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/foundation.dart';
import 'api_handler.dart';

//this is my store. everything's happening here without stateful widgets
class Store extends ChangeNotifier {
  ApiHandler _apiHandler = ApiHandler();
  String _arrange = '1G';
  List<Spots> _spots;
  List<FlSpot> _values;

  //this method for change arranges
  void changeArrange({String text}) {
    _arrange = text;
    notifyListeners();
  }

  //this method getting data and setting up as i can use.
  void getSpots() async {
    _spots = await _apiHandler.getSpots(arrange: _arrange);
    _values = _spots.map((e) => FlSpot(e.d, e.c)).toList();
    notifyListeners();
  }

  //getters
  List<FlSpot> get values => _values;

  String get arrange => _arrange;
}
