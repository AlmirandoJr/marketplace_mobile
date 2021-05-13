import 'package:flutter/material.dart';
import 'package:marketplace/core/model/product_model.dart';
import 'package:marketplace/utils/global.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bodyColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(left: 12, right: 12, top: 20),
          children: [
            Text(
              "Pesquisa",
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
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: greenColor, width: 2.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: greenColor, width: 3.0),
                ),
                hintText: 'Pesquisar produtos, mercados e vendedores',
                hintStyle: TextStyle(fontSize: 14, color: Colors.black),
              ),
            ),
            SizedBox(height: 15),
            /*Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.brown.shade800,
                ),
                Text('AH'),
              ],
            ),*/
            Container(
              height: 350,
              child: GridView.builder(
                itemCount: demoProducts.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (BuildContext context, int index) {
                  var item = demoProducts[index];
                  return Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.brown.shade800,
                        backgroundImage: AssetImage(item.images[0]),
                        radius: 70,
                      ),
                      Text(item.category)
                    ],
                  );
                },
              ),
            ),

            /*CircleAvatar(
              backgroundColor: Colors.brown.shade800,
              child: Text('AH'),
            )*/
          ],
        ),
      ),
    );
  }
}
