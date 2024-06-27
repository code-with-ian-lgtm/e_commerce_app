import 'package:e_commerce_app/components/my_button.dart';
import 'package:e_commerce_app/models/product.dart';
import 'package:e_commerce_app/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  //remove item from cart
  void removeItemFromCart (BuildContext context ,Product product) {
          showDialog(
        context: context, 
        builder: (context) => AlertDialog(
          content: const Text("Item will be removed from the cart"),
          actions: [
            //cancel button
            MaterialButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: const Text("Cancel"),
              ),

            //save button
            MaterialButton(
              onPressed: (){
                Navigator.pop(context);

                context.read<Shop>().removeItemFromCart(product);
              },
              child: const Text("Confirm"),
              )
          ],
        ),
         );
  }

  @override
  Widget build(BuildContext context) {
    //get access to the cart
    final cart = context.watch<Shop>().cart;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Cart "),
      ),
      body: Column(
        children: [
          //cart list
          Expanded(
            child:  cart.isEmpty ? Center(child: Text("Cart Empty")) : ListView.builder(
              itemCount: cart.length,
              itemBuilder: (context, index){
                //get individual item in cart
                final item = cart[index];


                //return it as a cart tile ui
                return ListTile(
                  title: Text(item.name),
                  subtitle: Text(item.price),
                  trailing: IconButton(
                    onPressed: () => removeItemFromCart(context, item), 
                    icon: const Icon(Icons.delete)
                    ),
                );

              }
              )
              ),

              //pay button
              MyButton(
                onTap: (){}, 
                child: const Text(
                  "Pay Now"
                ))

        ],
      ),
    );
  }
}