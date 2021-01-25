import 'package:finfree/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:finfree/controllers/detect_os.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Icon(
            isAndroidOrIOS(),
            color: Colors.greenAccent,
            size: 40.0,
          ),
          centerTitle: false,
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
        ),
        body: HomePage(),
      ),
    );
  }
}
