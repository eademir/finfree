import 'dart:convert';
import 'dart:io';
import 'package:finfree/controllers/spots.dart';
import 'package:http/http.dart';

class ApiHandler {
  String url = 'https://finfree.app/demo';
  String header = 'R29vZCBMdWNr';
  Response response;
  var responseJson;
  int count = 0;

  //i created Future for asynchronous methods.
  Future getData() async {
    //it's getting data as response.
    response = await get(
      url,
      headers: {HttpHeaders.authorizationHeader: header},
    );
    //it's decoding json
    responseJson = json.decode(response.body);
  }

  Future<List<Spots>> getSpots({String arrange}) async {
    if (response == null) {
      await getData();
    }
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
