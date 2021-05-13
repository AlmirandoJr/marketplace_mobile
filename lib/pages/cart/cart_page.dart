import 'package:flutter/material.dart';
import 'package:marketplace/core/model/product_model.dart';
import 'package:marketplace/utils/global.dart';
import 'package:marketplace/utils/widgets/rounded_button.dart';
import '../../utils/widgets/product_list.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          Expanded(
              child: Text(
            "Total:\nMZN 350, 00",
            textAlign: TextAlign.center,
            style: TextStyle(
              letterSpacing: .5,
            ),
          )),
          Expanded(
            child: roundedButton(
              label: "FINALIZAR COMPRA",
              color: greenColor,
              textColor: Colors.white,
              isCota: true,
              press: () {
                //Get.to(IndexPage());
              },
            ),
          ),
        ],
      ),
      backgroundColor: bodyColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(left: 12, right: 12, top: 20),
          children: [
            Text(
              "Carrinho",
              style: TextStyle(
                color: Colors.black,
                fontSize: 32,
                fontFamily: titleFont,
                //fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 700,
              child: ListView.builder(
                  itemCount: demoProducts.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    var item = demoProducts[index];
                    return Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: productList(
                        coverLink: item.images[0],
                        productName: item.title,
                        productPrice: item.price,
                        unitty: item.unity,
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
