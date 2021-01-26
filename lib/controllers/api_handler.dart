import 'dart:convert';
import 'dart:io';
import 'package:finfree/controllers/spots.dart';
import 'package:http/http.dart';

class ApiHandler {
  String url = 'https://finfree.app/demo';
  String header = 'R29vZCBMdWNr';

  Future<List<Spots>> getData({String arrange}) async {
    Response response = await get(
      url,
      headers: {HttpHeaders.authorizationHeader: header},
    );
    var responseJson = json.decode(response.body);
    if (response.statusCode == 200) {
      return (responseJson[arrange] as List)
          .map((e) => Spots.fromJSON(e))
          .toList();
    } else if (response.statusCode == 401) {
      return null;
      //TODO: add somethings fancy
    } else if (response.statusCode == 500) {
      return null;
      //TODO: add something fancy
    } else {
      return null;
    }
  }
}
