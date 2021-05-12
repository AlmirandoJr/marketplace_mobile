import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketplace/pages/sign/sign_page.dart';
import 'package:marketplace/utils/global.dart';
import 'package:marketplace/utils/widgets/rounded_button.dart';
import 'login_page.dart';

class SetupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //backgroundColor: bodyColor,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 12, right: 12),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: Get.height * 0.25),
              Hero(
                tag: "sign",
                child: Image.asset(
                  "assets/images/logo/logo-green.png",
                  //height: 150,
                  width: 300,
                ),
              ),
              SizedBox(height: Get.height * 0.02),
              Text(
                "Bem vindo ao Marketplace",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: titleFont,
                    fontSize: 21,
                    color: Colors.black),
              ),
              SizedBox(height: Get.height * 0.001),
              Text(
                "Junte-se a nós e desfrute dos melhores produtos aos melhores preços do mercado.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: titleFont,
                    fontSize: 15.6,
                    color: Colors.black.withOpacity(0.6),
                    letterSpacing: .6),
              ),
              SizedBox(height: Get.height * 0.02),

              /*
              SvgPicture.asset(
                "assets/icons/chat.svg",
                height: size.height * 0.45,
              ),
              */
              //SizedBox(height: Get.height * 0.05),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: roundedButton(
                          label: "REGISTO",
                          textColor: Colors.black,
                          //color: Color(0xFF457eb4),
                          press: () {
                            Get.to(SignPage());
                          }),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: roundedButton(
                          label: "ENTRAR",
                          color: greenColor,
                          textColor: Colors.white,
                          press: () {
                            Get.to(LoginPage());
                          }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
