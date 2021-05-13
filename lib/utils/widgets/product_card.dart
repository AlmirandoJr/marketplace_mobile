import 'dart:math' as math;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../global.dart';

Container productCard({
  String name,
  double price,
  String img,
  String unity,
}) {
  return Container(
    width: Get.height * 0.25,
    //height: Get.height * 0.28,
    padding: EdgeInsets.only(right: 10),
    child: Container(
      child: Container(
        //padding: EdgeInsets.symmetric(horizontal: 16),
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(6),
            bottomLeft: Radius.circular(6),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Container(
                height: Get.height * 0.25,
                width: Get.height * 0.25,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      img,
                    ),
                    fit: BoxFit.cover,
                  ),
                  color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                      .withOpacity(1.0),
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              name.toUpperCase() ?? "Nome não especificado",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: smallSize + 1,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.5,
                  fontFamily: fontFamily),
            ),
            Text(
              "MZN $price por $unity" ?? "Preço desconhecido",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.black.withOpacity(.8),
                fontSize: smallSize - 1,
                letterSpacing: .2,
                //fontWeight: FontWeight.w500,
                fontFamily: fontFamily,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
