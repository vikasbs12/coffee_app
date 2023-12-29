import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoe_app/components/coffee_tile.dart';
import 'package:shoe_app/models/coffee.dart';
import 'package:shoe_app/models/coffee_shop.dart';
import 'package:shoe_app/pages/cart_page.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
    void addToCart(Coffee coffee) {
    // Implement your logic for adding to the cart
   Provider.of<CoffeeShop>(context,listen: false).addItemToCart(coffee);
   showDialog(context: context, 
   builder: (context)=>AlertDialog(
    title: const Text('Successfully added to cart'),
   ),
   );
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
              const  Text(
                  'How would you like your coffee?',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 25,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: value.coffeeShop.length,
                    itemBuilder: (context, index) {
                      Coffee eachCoffee = value.coffeeShop[index];
                      return CoffeeTile(
                        coffee: eachCoffee,
                        icon: Icon(Icons.add),
                        onPressed: () => addToCart(eachCoffee),
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
