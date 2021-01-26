import 'package:finfree/controllers/spots.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/foundation.dart';

import 'api_handler.dart';

class Store extends ChangeNotifier {
  String _arrange = '1G';
  ApiHandler _apiHandler = ApiHandler();
  List<Spots> _spots;
  List<FlSpot> _values;

  void changeArrange({String text}) {
    _arrange = text;
    notifyListeners();
  }

  void getSpots() async {
    _spots = await _apiHandler.getData(arrange: _arrange);
    _values = _spots.map((e) => FlSpot(e.d, e.c)).toList();
    notifyListeners();
  }

  List<FlSpot> get values => _values;

  String get arrange => _arrange;
}
