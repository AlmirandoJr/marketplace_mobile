import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketplace/pages/sign/setup_page.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: IconButton(
            icon: Icon(Icons.group_rounded),
            onPressed: () {
              Get.to(SetupPage());
            },
          ),
        )
      ],
    );
  }
}
