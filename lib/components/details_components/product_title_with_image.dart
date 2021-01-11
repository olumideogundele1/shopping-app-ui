
import 'package:flutter/material.dart';
import 'package:shopping_app_ui/models/Products.dart';

import '../../constants.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key key,
    @required this.products,
  }) : super(key: key);

  final Products products;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Aristocratic HandBag',style: TextStyle(color: Colors.white),),
          Text(products.title,style: Theme.of(context).textTheme.headline5
              .copyWith(color: Colors.white,fontWeight: FontWeight.bold),),
          SizedBox(height: kDefaultPadding,),
          Row(
            children: <Widget>[
              Padding(
                padding:  EdgeInsets.only(bottom: 10.0),
                child: RichText(text: TextSpan(
                    children: [
                      TextSpan(text: 'Price\n'),
                      TextSpan(text: '\$${products.price}',
                          style: Theme.of(context).textTheme.headline4.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ))
                    ]
                )),
              ),
              SizedBox(width: kDefaultPadding,),
              Expanded(child: Image.asset(products.image,fit: BoxFit.fill,))
            ],
          ),
        ],
      ),
    );
  }
}