import 'package:e_commerce_app/components/my_drawer.dart';
import 'package:e_commerce_app/components/my_product_tile.dart';
import 'package:e_commerce_app/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    //access products in shop
    final products = context.watch<Shop>().shop;

    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Shop Page"),
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, '/cart_page'), 
            icon: const Icon(Icons.shopping_cart_checkout_outlined))

        ],
      ),
      drawer:const MyDrawer(),
      body: ListView(
        children: [
           Center(
            child: 
            Text(
              "Picked from a list of premium products",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary
              ),
            )
            ),

          //Product list
        SizedBox(
        height: 550,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: products.length,
          padding: const EdgeInsets.all(15),
          itemBuilder:(context, index) {
            //get each individual product from shop
            final product = products[index];
        
            //return as a product ui
            return MyProductTile(product: product);
        
          }
          ),
      ),
        ],
      )
    );
  }
}