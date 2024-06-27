import 'package:e_commerce_app/components/my_list_tile.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child:  Column(
        children: [
          //drawer headeer
          DrawerHeader(
            child: Icon(
              Icons.shopping_bag,
              size: 72,
              color: Theme.of(context).colorScheme.inversePrimary,
              )
            ),

            const SizedBox(height: 10,),


          //shop tile
          MyListTile(
            text: "Shop", 
            icon: Icons.home, 
            onTap: (){
              Navigator.pop(context);
            }
            ),


          //cart tile
          MyListTile(
            text: "Cart", 
            icon: Icons.shopping_cart_checkout, 
            onTap: (){
              Navigator.pop(context);
              Navigator.pushNamed(context, "/cart_page");
            }
            ),     


            const Spacer()     ,

          //exit shop tile
          MyListTile(
            text: "Exit", 
            icon: Icons.exit_to_app, 
            onTap: (){
              Navigator.pop(context);
              Navigator.pushNamed(context, '/intro_page');
            }
            ),
            const SizedBox(height: 15,)          
        ],
      ),
    );
  }
}