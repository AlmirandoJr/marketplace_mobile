import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:marketplace/core/model/product_model.dart';
import 'package:marketplace/utils/global.dart';
import '../../utils/widgets/product_card.dart';
import 'targets/product_description.dart';

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
                fontSize: 32,
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
                itemCount: demoProducts.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  var item = demoProducts[index];
                  return GestureDetector(
                    onTap: () {
                      Get.to(() => ProductDescription(product: item));
                    },
                    child: productCard(
                      img: item.images[0],
                      name: item.title,
                      price: item.price,
                      unity: item.unity,
                    ),
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
                itemCount: demoProducts.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  demoProducts.sort((a, b) => b.price.compareTo(a.price));
                  //demoProducts.reversed;

                  var item = demoProducts[index];

                  return GestureDetector(
                    onTap: () {
                      Get.to(() => ProductDescription(
                            product: item,
                          ));
                    },
                    child: productCard(
                      img: item.images[0],
                      name: item.title,
                      price: item.price,
                      unity: item.unity,
                    ),
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
            SizedBox(
              height: 5,
            ),
            Container(
              height: Get.height * 0.32,
              child: ListView.builder(
                itemCount: demoProducts.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  demoProducts.sort((a, b) => b.rating.compareTo(a.rating));
                  demoProducts.reversed;

                  var item = demoProducts[index];

                  return GestureDetector(
                    onTap: () {
                      Get.to(() => ProductDescription(
                            product: item,
                          ));
                    },
                    child: productCard(
                      img: item.images[0],
                      name: item.title,
                      price: item.price,
                      unity: item.unity,
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 5,
            ),
            /*Container(
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
                    id: 1.toString(),
                  );
                },
              ),
            ),*/
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
