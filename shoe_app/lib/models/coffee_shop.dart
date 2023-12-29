import 'package:flutter/material.dart';
import 'coffee.dart';

class CoffeeShop extends ChangeNotifier{
  final List <Coffee> _shop = [


       Coffee(name: 'Long Black',
     imagePath: 'lib/images/h1.png',
      price: '4.10'),
      
       Coffee(name: 'Latte',
     imagePath: 'lib/images/h2.png',
      price: '4.20'),

       Coffee(name: 'Expresso',
     imagePath: 'lib/images/h3.png',
      price: '4.30'),

        Coffee(name: 'Iced coffee',
     imagePath: 'lib/images/h4.png',
      price: '4.40',
      ),

  ];
  List <Coffee> _userCart = [];

  List <Coffee> get coffeeShop => _shop;

  List <Coffee> get userCart => _userCart;

  void addItemToCart(Coffee coffee){
    _userCart.add(coffee);
    notifyListeners();
  }
  void removeItemFromCart(Coffee coffee){
    _userCart.remove(coffee);
     notifyListeners();
  }
}