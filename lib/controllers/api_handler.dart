import 'dart:io';
import 'package:http/http.dart' as http;

class ApiHandler{
  String url = 'https://finfree.app/demo';
  String header = 'R29vZCBMdWNr';

  void getData() async {
    var response = await http.get(url, headers: {HttpHeaders.authorizationHeader: header},);
    print(response.body);
  }
}