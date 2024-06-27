import 'package:e_commerce_app/models/product.dart';
import 'package:e_commerce_app/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyProductTile extends StatelessWidget {
  final Product product;

  MyProductTile({
    super.key,
    required this.product
    });

    //add to cart button pressed
    void addToCart (BuildContext context) {
      //show dialog to ask user to confirm addition to cart
      showDialog(
        context: context, 
        builder: (context) => AlertDialog(
          content: Text("Add item to cart"),
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

                context.read<Shop>().addToCart(product);
              },
              child: const Text("Confirm"),
              )
          ],
        ),
         );

    }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(12)
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //product image
          AspectRatio(
            aspectRatio: 1,
            child: Container(

              width: double.infinity,
              padding: const EdgeInsets.all(25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Theme.of(context).colorScheme.secondary
              ),
              child: const Icon(Icons.favorite_outline)),
          ),

          const SizedBox(height: 20,),

          //product name
          Text(
            product.name,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
            ),
            const SizedBox(height: 15,),

          //product description
          Text(product.description),

          const SizedBox(height: 15,),
          const Spacer(),


          //product price + add to cart button
          Row(
            children: [
              Text('KES ${product.price}'),

              const Spacer(),
              Container(
                decoration: BoxDecoration(
                  borderRadius:const  BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12)
                  ),
                  color: Theme.of(context).colorScheme.inversePrimary
                ),
                child: IconButton(
                  onPressed: () => addToCart(context), 
                  icon: const Icon(Icons.add))
              )
            ],
          )
        ],
      ),
    );
  }
}