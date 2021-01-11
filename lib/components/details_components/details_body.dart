import 'package:flutter/material.dart';
import 'package:shopping_app_ui/components/details_components/product_title_with_image.dart';
import 'package:shopping_app_ui/constants.dart';
import 'package:shopping_app_ui/models/Products.dart';

import 'color_and_size.dart';

class DetailsBody extends StatelessWidget {
  final Products products;

  DetailsBody({this.products});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: size.height * 0.3
                  ),
                  padding: EdgeInsets.only(
                    top: size.height * 0.18,
                    left: kDefaultPadding,
                    right: kDefaultPadding
                  ),
                  height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    )
                  ),
                  child: ColorAndSize(products: products),
                ),
                ProductTitleWithImage(products: products),

              ],
            ),

          ),
        ],
      ),
    );
  }
}



