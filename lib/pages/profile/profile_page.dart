import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketplace/core/model/product_model.dart';
import 'package:marketplace/pages/profile/targets/seller_description.dart';
import 'package:marketplace/pages/sign/setup_page.dart';
import 'package:marketplace/pages/timeline/targets/product_description.dart';
import 'package:marketplace/utils/global.dart';
import 'package:marketplace/utils/widgets/product_card.dart';
import 'package:marketplace/utils/widgets/rounded_button.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.only(left: 12, right: 12, top: 15),
        children: [
          Column(
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey,
                //backgroundImage: AssetImage("assets/images/logo/bayu.png"),
                child: Container(
                    child: Image.asset(
                  "assets/images/logo/bayu.png",
                  width: 70,
                )),
                radius: 60,
              ),
              Text(
                "Bayu Developers",
                style: TextStyle(
                  fontFamily: titleFont,
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Maputo, Moçambique",
                style: TextStyle(fontSize: 18),
              ),
              Text(
                "Comprador",
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          roundedButton(
            label: "DEFINIÇÕES",
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
                "VENDEDORES FAVORITOS",
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
          SizedBox(
            height: 10,
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
                    Get.to(SellerDescription(
                      sellerImage: item.sellerImage,
                      sellerName: item.sellerName,
                      sellerMarket: item.sellerMarket,
                      sellerRating: item.rating,
                    ));
                  },
                  child: Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.brown.shade800,
                          backgroundImage: AssetImage(item.sellerImage),
                          radius: 70,
                        ),
                        Text(item.sellerName),
                        Text(item.sellerMarket),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "PRODUTOS FAVORITOS",
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
    );
  }
}
