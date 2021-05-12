import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:marketplace/utils/global.dart';
import 'timeline/timeline_page.dart';
import 'cart/cart_page.dart';
import 'search/search_page.dart';
import 'profile/profile_page.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  PageController pageController;
  int pageIndex = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  onPageChanged(int pageIndex) {
    setState(() {
      this.pageIndex = pageIndex;
    });
  }

  onTap(int pageIndex) {
    pageController.animateToPage(
      pageIndex,
      duration: Duration(milliseconds: 50),
      curve: Curves.fastLinearToSlowEaseIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bodyColor,
      //appBar: null,
      body: PageView(
        children: <Widget>[
          TimelinePage(), //Evento
          SearchPage(), //Agenda/Expositores
          CartPage(), //Chat
          ProfilePage(), //Informacoes
        ],
        controller: pageController,
        onPageChanged: onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: CupertinoTabBar(
        currentIndex: pageIndex,
        onTap: onTap,
        activeColor: greenColor,
        inactiveColor: Colors.black,
        iconSize: 22,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesome.home,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesome.search,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesome.cart_arrow_down,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesome.user_circle,
            ),
          ),
        ],
      ),
    );
  }
}
