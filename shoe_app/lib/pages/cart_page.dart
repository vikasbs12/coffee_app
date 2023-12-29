import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoe_app/components/coffee_tile.dart';
import 'package:shoe_app/models/coffee.dart';
import 'package:shoe_app/models/coffee_shop.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void removeFromCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).removeItemFromCart(coffee);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
             const   Text(
                  'How would you like your coffee?',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 25,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: value.userCart.length,
                    itemBuilder: (context, index) {
                      Coffee eachCoffee = value.userCart[index];
                      return CoffeeTile(
                        coffee: eachCoffee,
                        icon: Icon(Icons.remove),
                        onPressed: () => removeFromCart(eachCoffee),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
