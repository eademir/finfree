import 'package:flutter/material.dart';
import 'dart:io' show Platform;

bool isAndroid = Platform.isAndroid;

IconData isAndroidOrIOS() {
  if (isAndroid) {
    return Icons.arrow_back;
  } else {
    return Icons.arrow_back_ios_outlined;
  }
}
