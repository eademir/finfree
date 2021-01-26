import 'package:flutter/material.dart';
import 'dart:io' show Platform;

//this is for arrow where left top corner and can be more for the largest projects.
bool isAndroid = Platform.isAndroid;

IconData isAndroidOrIOS() {
  if (isAndroid) {
    return Icons.arrow_back;
  } else {
    return Icons.arrow_back_ios_outlined;
  }
}
