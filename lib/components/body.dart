import 'package:flutter/material.dart';
import 'package:shopping_app_ui/constants.dart';
import 'package:shopping_app_ui/models/Products.dart';
import 'package:shopping_app_ui/screens/home/details/details_screen.dart';

import 'categories.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  //List<Products> list = Products().products;

  @override
  Widget build(BuildContext context) {
    return Column(
     crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('WOMEN',style: Theme.of(context).textTheme.headline5.copyWith(fontWeight: FontWeight.bold)),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical:8.0,horizontal: kDefaultPadding),
            child: GridView.builder(
              itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  mainAxisSpacing: kDefaultPadding,
                  crossAxisSpacing: kDefaultPadding
                ),
                itemBuilder: (context,index){
                  return ItemCard(
                    product:products[index],
                    pressed: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DetailsScreen(products: products[index],))),
                  );

                }),
          ),
        )
      ],
    );
  }
}


