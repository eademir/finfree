
import 'package:flutter/material.dart';
import 'dart:io' show Platform;

IconData isAndroidOrIOS(){
  if(Platform.isAndroid){
    return Icons.arrow_back;
  } else {
    return Icons.arrow_back_ios_outlined;
  }
}