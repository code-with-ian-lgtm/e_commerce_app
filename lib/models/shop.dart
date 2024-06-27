import 'package:e_commerce_app/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier{

  //products for sale
  final List<Product> _shop = [
    Product(
      name: "Watch", 
      price: "99.99", 
      description: "Item Description", 
      // imagePath: imagePath
      ),
    Product(
      name: "Watch", 
      price: "99.99", 
      description: "Item Description", 
      // imagePath: imagePath
      ),
    Product(
      name: "Watch", 
      price: "99.99", 
      description: "Item Description", 
      // imagePath: imagePath
      ),            
    Product(
      name: "Watch", 
      price: "99.99", 
      description: "Item Description", 
      // imagePath: imagePath
      ),
    Product(
      name: "Watch", 
      price: "99.99", 
      description: "Item Description", 
      // imagePath: imagePath
      ),
    Product(
      name: "Watch", 
      price: "99.99", 
      description: "Item Description", 
      // imagePath: imagePath
      ),                  
  ];


  //user cart

  List<Product> _cart = [];

  //get product list 
  List<Product> get shop => _shop;


  //get user cart
  List<Product> get cart => _cart;

  //add item to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }
  

  //remove item from cart
  void removeItemFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }

}