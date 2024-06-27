import 'package:e_commerce_app/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier{

  //products for sale
  final List<Product> _shop = [
    Product(
      name: "ChillMax Hoodie", 
      price: " 4,500", 
      description: "Embrace the ultimate comfort and style with the ChillMax Hoodie. ", 
      imagePath: "https://i.pinimg.com/236x/2f/f5/9b/2ff59b02a83e208393a7ecd4591e5664.jpg"
      ),
    Product(
      name: "Skywalk Airmax Shoes", 
      price: "12,000", 
      description: "Step into a new realm of comfort and performance with the Skywalk Airmax Shoes.", 
      imagePath: "https://i.pinimg.com/236x/a4/c9/4e/a4c94e4f08e17e3d854bb4ae012960e3.jpg"
      ),
    Product(
      name: "Solaris Sunglasses", 
      price: "3,200", 
      description: "Protect your eyes and elevate your look with Solaris Sunglasses.", 
      imagePath: "https://i.pinimg.com/236x/49/34/7d/49347da0d1ec9391d345256f37a04140.jpg"
      ),            
    Product(
      name: "Urbane Leather Satchel", 
      price: "8,500", 
      description: "Add a touch of sophistication to your everyday look with the Urbane Leather Satchel. ", 
      imagePath: "https://i.pinimg.com/236x/dd/f0/9d/ddf09d27fef66c6ca33e32446d9be544.jpg"
      ),
    Product(
      name: "Nomad Canvas Backpack", 
      price: "6,000", 
      description: "Discover the perfect blend of durability and style with the Nomad Canvas Backpack. ", 
      imagePath: "https://i.pinimg.com/236x/15/50/43/155043ebee51838b69ab0122d46e4d01.jpg"
      ),
    Product(
      name: "MacMaster Pro 15", 
      price: "150,000", 
      description: "Experience unparalleled performance with the MacMaster Pro 15", 
      imagePath: "https://i.pinimg.com/236x/58/ce/38/58ce38369deec5a8531897c530cc6029.jpg"
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