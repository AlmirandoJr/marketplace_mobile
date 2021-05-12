import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:marketplace/utils/global.dart';
import '../../utils/widgets/product_card.dart';

class TimelinePage extends StatefulWidget {
  @override
  _TimelinePageState createState() => _TimelinePageState();
}

DateTime now = DateTime.now();

class _TimelinePageState extends State<TimelinePage> {
  @override
  Widget build(BuildContext context) {
    initializeDateFormatting();
    Intl.defaultLocale = 'pt_BR';
    //var date = DateFormat.MMMEd().format(now);
    var date = DateFormat.MMMMEEEEd().format(now);
    return Scaffold(
      backgroundColor: bodyColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(left: 12, right: 12, top: 20),
          children: [
            Text(
              "Marketplace",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontFamily: titleFont,
                //fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              date.toString().toUpperCase(),
              style: TextStyle(
                color: Colors.black.withOpacity(.6),
                fontSize: 13,
                fontFamily: titleFont,
                //fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "RECOMENDADOS",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                Text(
                  "VER TODOS",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                      color: Colors.black.withOpacity(.6)),
                ),
              ],
            ),
            Container(
              height: Get.height * 0.32,
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (index, context) {
                  return productCard(
                    img: "assets/images/repolho.jpg",
                    name: "REPOLHO",
                    price: 200,
                    unity: "Kg",
                  );
                },
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "OFERTAS DO DIA",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                Text(
                  "VER TODAS",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                      color: Colors.black.withOpacity(.6)),
                ),
              ],
            ),
            Container(
              height: Get.height * 0.32,
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (index, context) {
                  return productCard(
                    img: "assets/images/repolho.jpg",
                    name: "REPOLHO",
                    price: 200,
                    unity: "Kg",
                  );
                },
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "MEUS VENDEDORES",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                Text(
                  "VER TODOS",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                      color: Colors.black.withOpacity(.6)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "LEGUMES",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                Text(
                  "VER TODOS",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                      color: Colors.black.withOpacity(.6)),
                ),
              ],
            ),
            Container(
              height: Get.height * 0.32,
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (index, context) {
                  return productCard(
                    img: "assets/images/repolho.jpg",
                    name: "REPOLHO",
                    price: 200,
                    unity: "Kg",
                  );
                },
              ),
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
