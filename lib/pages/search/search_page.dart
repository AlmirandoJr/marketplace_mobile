import 'package:flutter/material.dart';
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
          ],
        ),
      ),
    );
  }
}
