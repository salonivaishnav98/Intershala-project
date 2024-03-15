import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../Values/colorFile.dart';

class FlutterToast{
  void toastMsg(String msg){
    Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: ColorFile.primaryColor,
      textColor: Colors.white,
      fontSize: 16,

    );
  }
}