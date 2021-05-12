import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../global.dart';

Container roundedButton(
    {String label,
    Function press,
    Color color,
    textColor,
    bool isCota = false}) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 3),
    width: Get.width,
    decoration: BoxDecoration(
      border: Border.all(width: 1.5, color: greenColor),
      borderRadius: BorderRadius.circular(2),
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(2),
      child: FlatButton(
        padding: isCota
            ? EdgeInsets.symmetric(vertical: 15, horizontal: 10)
            : EdgeInsets.symmetric(vertical: 15, horizontal: 40),
        color: color,
        onPressed: press,
        child: Text(
          label,
          style: TextStyle(
              color: textColor,
              fontFamily: fontFamily,
              letterSpacing: 0.8,
              fontSize: isCota ? Get.height * 0.023 : Get.height * 0.025,
              fontWeight: FontWeight.bold),
        ),
      ),
    ),
  );
}
