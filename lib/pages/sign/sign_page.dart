import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketplace/utils/global.dart';
import 'package:marketplace/utils/widgets/rounded_button.dart';
import '../index.dart';
import 'login_page.dart';

class SignPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bodyColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(left: 12, right: 12, top: 20),
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
            SizedBox(height: 10),
            Text(
              "Registo",
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
                hintText: 'Email',
                hintStyle: TextStyle(fontSize: 14, color: Colors.black),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: greenColor, width: 2.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: greenColor, width: 3.0),
                ),
                hintText: 'Nome',
                hintStyle: TextStyle(fontSize: 14, color: Colors.black),
              ),
              keyboardType: TextInputType.text,
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: greenColor, width: 2.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: greenColor, width: 3.0),
                ),
                hintText: 'Senha',
                hintStyle: TextStyle(fontSize: 14, color: Colors.black),
              ),
              keyboardType: TextInputType.text,
              obscureText: true,
            ),
            SizedBox(height: 10),
            Text(
              "Ao criar conta, voce concorda com os Termos e Condições e Política de Privacidade",
              textAlign: TextAlign.left,
              style: TextStyle(
                //fontWeight: FontWeight.bold,
                fontFamily: fontFamily,
                fontSize: 12.5,
                color: Colors.black,
              ),
            ),
            roundedButton(
                label: "CRIAR CONTA",
                color: greenColor,
                textColor: Colors.white,
                press: () {
                  Get.to(IndexPage());
                }),
            GestureDetector(
              onTap: () {
                Get.to(LoginPage());
              },
              child: Text(
                "POSSUI UMA CONTA ASSOCIADA?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  //fontWeight: FontWeight.bold,
                  fontFamily: fontFamily,
                  fontSize: 13,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
