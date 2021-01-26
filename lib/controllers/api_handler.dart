import 'dart:convert';
import 'dart:io';
import 'package:finfree/controllers/spots.dart';
import 'package:http/http.dart';

class ApiHandler {
  String url = 'https://finfree.app/demo';
  String header = 'R29vZCBMdWNr';

  //i created Future for asynchronous methods.
  Future<List<Spots>> getData({String arrange}) async {
    //it's getting data as response.
    Response response = await get(
      url,
      headers: {HttpHeaders.authorizationHeader: header},
    );
    //it's decoding json
    var responseJson = json.decode(response.body);
    //response staffs
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
