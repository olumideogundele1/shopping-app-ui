import 'package:flutter/material.dart';
import 'package:shopping_app_ui/models/Products.dart';

import '../../constants.dart';
import 'color_dot.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key key,
    @required this.products,
  }) : super(key: key);

  final Products products;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Color'),
                  Row(
                    children: <Widget>[
                      ColorDot(color: Color(0xFF356C95),isSelected: true,),
                      ColorDot(color: Color(0xFFF8C078),),
                      ColorDot(color: Color(0xFFA29B9B),),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
                child: RichText(
                  text: TextSpan(
                      style: TextStyle(color: kTextColor),
                      children: [
                        TextSpan(text:'Size\n'),
                        TextSpan(text:'\$${products.size} cm',style: Theme.of(context)
                            .textTheme.headline5.copyWith(fontWeight: FontWeight.bold)),
                      ]
                  ),)
            )
          ],
        ),
      ],
    );
  }
}