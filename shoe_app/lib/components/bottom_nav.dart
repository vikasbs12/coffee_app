import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
   MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.all(25),
      child: GNav(
        onTabChange: (value) => onTabChange!(value),
        color: Colors.grey[500],
        mainAxisAlignment: MainAxisAlignment.center,
        activeColor: Colors.grey[800],
        tabBackgroundColor: Colors.grey.shade300,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBorderRadius: 24,
    
        tabs: const  [
          GButton(icon: Icons.home,
          text: 'SHOP',),
           GButton(icon: Icons.shopping_bag_outlined,
          text: 'CART',),
        ],
      ),
    );
  }
}