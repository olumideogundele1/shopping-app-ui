import 'package:flutter/material.dart';
import 'package:shopping_app_ui/models/Products.dart';

import '../constants.dart';

class ItemCard extends StatelessWidget {
  final Products product;
  final Function pressed;

  const ItemCard({Key key, this.product, this.pressed}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: GestureDetector(
            onTap: pressed,
            child: Container(
              //margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset(product.image),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical:kDefaultPadding / 4),
          child: Text(product.title,
            style: TextStyle(
              color: kTextLightColor,
            ),
          ),
        ),
        Text('\$${product.price}',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold
          ),),
      ],
    );
  }
}