import 'package:flutter/material.dart';
import 'package:shoe_app/components/bottom_nav.dart';
import 'package:shoe_app/const.dart';
import 'package:shoe_app/pages/cart_page.dart';
import 'package:shoe_app/pages/shop_page.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedindex = 0;
  // ignore: non_constant_identifier_names
  void NavigationBar(int index){
    setState(() {
      _selectedindex = index;
    });
  }
  final List<Widget> _pages = [
    ShopPage(),

    CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => NavigationBar(index),
      ),
      body: _pages[_selectedindex],
    );
  }
}