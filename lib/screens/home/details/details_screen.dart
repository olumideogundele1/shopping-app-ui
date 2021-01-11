import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_app_ui/components/details_components/details_body.dart';
import 'package:shopping_app_ui/models/Products.dart';

class DetailsScreen extends StatelessWidget {
  final Products products;

  DetailsScreen({this.products});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: products.color,
      appBar: AppBar(
        backgroundColor: products.color,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset("assets/icons/back.svg",color: Colors.white,),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset("assets/icons/search.svg",color: Colors.white,),
            onPressed: () => null,
          ),
          IconButton(
            icon: SvgPicture.asset("assets/icons/cart.svg",color: Colors.white,),
            onPressed: () => null
          ),
          SizedBox(width: 10,)
        ],
      ),
      body: DetailsBody(products: products),
    );
  }
}
