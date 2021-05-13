import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:get/get.dart';

Row productList(
    {String productName,
    double productPrice,
    String coverLink,
    String unitty}) {
  return Row(
    children: <Widget>[
      Stack(
        children: <Widget>[
          Container(
            height: Get.height * 0.14,
            width: Get.height * 0.14,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "$coverLink",
                    ),
                    fit: BoxFit.cover),
                color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                    .withOpacity(0.8),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(3)),
          ),
        ],
      ),

      SizedBox(width: 12.0),

      Expanded(
        flex: 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "$productName",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style:
                  TextStyle(color: Colors.black, fontSize: Get.height * 0.029),
            ),
            //SizedBox(height: 4.0),
            Text(
              "$productPrice X 2$unitty",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              //'Cães de Raça',
              style: TextStyle(
                color: Colors.black.withOpacity(0.7),
                fontSize: Get.height * 0.026,
              ),
            ),
            Text(
              "ENTREGA GRÁTIS",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              //'Cães de Raça',
              style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontSize: Get.height * 0.02,
              ),
            ),
          ],
        ),
      ),
      //Spacer(),
      GestureDetector(
        child: Icon(
          //Icons.more_horiz,
          Icons.mode_edit,
          color: Colors.black.withOpacity(0.6),
          size: 24.0,
        ),
        onTap: () {
          print('Tapped');
        },
      ),
      SizedBox(width: 5),
      GestureDetector(
        child: Icon(
          //Icons.more_horiz,
          Icons.delete_forever,
          color: Colors.black.withOpacity(0.6),
          size: 24.0,
        ),
        onTap: () {
          print('Tapped');
        },
      ),
    ],
  );
}
