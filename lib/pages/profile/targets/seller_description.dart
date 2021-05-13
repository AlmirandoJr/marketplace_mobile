import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:marketplace/core/model/product_model.dart';
import 'package:marketplace/pages/sign/setup_page.dart';
import 'package:marketplace/pages/timeline/targets/product_description.dart';
import 'package:marketplace/utils/global.dart';
import 'package:marketplace/utils/widgets/product_card.dart';
import 'package:marketplace/utils/widgets/rounded_button.dart';

class SellerDescription extends StatelessWidget {
  final String sellerName;
  final String sellerMarket;
  final String sellerImage;
  final double sellerRating;

  const SellerDescription(
      {Key key,
      this.sellerName,
      this.sellerImage,
      this.sellerMarket,
      this.sellerRating})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(left: 12, right: 12, top: 15),
          children: [
            GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Align(
                alignment: Alignment.topLeft,
                child: Icon(Icons.chevron_left),
              ),
            ),
            Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  backgroundImage: AssetImage(sellerImage),
                  radius: 60,
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      sellerName,
                      style: TextStyle(
                        fontFamily: titleFont,
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.verified,
                      color: Colors.green[800],
                      size: 26,
                    ),
                  ],
                ),
                RatingBar.builder(
                  itemSize: 20,
                  initialRating: sellerRating,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                Text(
                  "Maputo, Moçambique",
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  "Vendedor",
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            roundedButton(
              label: "DENUNCIAR",
              color: greenColor,
              textColor: Colors.white,
              press: () {
                Get.to(SetupPage());
              },
            ),
            roundedButton(
              label: "MENSAGENS",
              textColor: Colors.black,
              //color: Color(0xFF457eb4),
              press: () {
                // Get.to(SignPage());
              },
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "PRODUTOS MAIS VENDIDOS",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                Text(
                  "VER TODOS",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 11,
                    color: Colors.black.withOpacity(.6),
                  ),
                ),
              ],
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
          ],
        ),
      ),
    );
  }
}
