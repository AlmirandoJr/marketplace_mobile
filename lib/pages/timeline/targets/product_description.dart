import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:marketplace/core/model/product_model.dart';
import 'package:marketplace/pages/timeline/targets/widgets/product_images.dart';
import 'package:marketplace/utils/global.dart';
import 'package:marketplace/utils/widgets/product_card.dart';
import 'package:marketplace/utils/widgets/rounded_button.dart';

class ProductDescription extends StatelessWidget {
  final Product product;
  const ProductDescription({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
        backgroundColor: greenColor,
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left,
            color: Colors.white,
            size: 26,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        //actions: [IconButton(icon: Icon(Icons.chevron_left), onPressed: null)],
      ),
      backgroundColor: bodyColor,
      body: ListView(
        children: [
          Container(
            width: Get.width,
            height: Get.height * 0.4,
            child: Image.asset(
              product.images[0],
              fit: BoxFit.cover,
            ),
          ),

          //ProductImages(product: product),
          Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title.toUpperCase(),
                      style: TextStyle(
                          fontSize: largeSize - 3, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "por ${product.sellerName}",
                      style: TextStyle(
                        fontSize: regularSize,
                      ),
                    ),
                    Text(
                      "MZN ${product.price} /${product.unity}",
                      style: TextStyle(
                          fontSize: regularSize, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.delivery_dining,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "ENTREGA GRÁTIS",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    RatingBar.builder(
                      itemSize: 20,
                      initialRating: product.rating,
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
                      "${product.qtdSold} vendidos",
                      style: TextStyle(
                        fontSize: smallSize,
                      ),
                    ),
                    Text(
                      "${product.qtdAvailable} restantes",
                      style: TextStyle(
                        fontSize: smallSize,
                      ),
                    ),
                    Text(
                      "De ${product.productOrigin}",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: smallSize,
                        color: Colors.black.withOpacity(.8),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                roundedButton(
                  label: "COMPRAR AGORA",
                  color: greenColor,
                  textColor: Colors.white,
                  press: () {
                    //Get.to(IndexPage());
                  },
                ),
                roundedButton(
                  label: "ADICIONAR AO CARRINHO",
                  textColor: Colors.black,
                  //color: Color(0xFF457eb4),
                  press: () {
                    // Get.to(SignPage());
                  },
                ),
                Text(
                  "Descrição",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: regularSize,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "${product.description} restantes",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: regularSize,
                    color: Colors.black.withOpacity(.8),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Sobre o vendedor",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: regularSize,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${product.sellerName} - ${product.sellerMarket}",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: regularSize,
                        color: Colors.black.withOpacity(.8),
                      ),
                    ),
                    Icon(
                      Icons.verified,
                      color: Colors.green[800],
                      size: 26,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "300 VENDAS",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: smallSize,
                        color: Colors.black.withOpacity(.8),
                      ),
                    ),
                    Text(
                      "850 VISITAS",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: smallSize,
                        color: Colors.black.withOpacity(.8),
                      ),
                    ),
                    Text(
                      "135 CLASSIFICAÇÕES",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: smallSize,
                        color: Colors.black.withOpacity(.8),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: roundedButton(
                        label: "LIGAR",
                        textColor: Colors.black,
                        isCota: true,
                        //color: Color(0xFF457eb4),
                        press: () {
                          // Get.to(SignPage());
                        },
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: roundedButton(
                        label: "VISITAR PERFIL",
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
                SizedBox(
                  width: 10,
                ),
                Text(
                  "PRODUTOS RELACIONADOS",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: regularSize,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  height: Get.height * 0.31,
                  child: ListView.builder(
                    itemCount: demoProducts.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      demoProducts.sort((b, a) {
                        return b.qtdSold.compareTo(a.qtdSold);
                      });
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
                  width: 10,
                ),
                Text(
                  "MAIS IMAGENS",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: regularSize,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                ProductImages(product: product),
              ],
            ),
          )
        ],
      ),
    );
  }
}
