import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
      crossAxisAlignment: CrossAxisAlignment.start,
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
        Padding(
          padding: EdgeInsets.only(top: 15),
          child: Text(products.description,style: TextStyle(
            height: 1.5
          ),),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CartCounter(),
              Container(
                padding: EdgeInsets.all(8),
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFFF6464)
                ),
                child: SvgPicture.asset("assets/icons/heart.svg"),
              )
            ],
          ),
        ),
        Row(
          children: [
            Container(
              height: 50,
              width: 58,
              margin: EdgeInsets.only(right: 10.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: products.color
                ),
                borderRadius: BorderRadius.circular(20)
              ),
              child: IconButton(
                icon: SvgPicture.asset("assets/icons/add_to_cart.svg"),
                onPressed: (){},
              ),
            ),
            Expanded(
                child: SizedBox(
                  height: 50,
                  child: FlatButton(
                    color: products.color,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                    child: Text('BUY NOW', style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),),
                    onPressed: (){},
                  ),
                ))
          ],
        )
      ],
    );
  }
}

class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        BuildOutlineBtn(
          icon: Icons.remove,
          onPressed: (){
            setState(() {
              if(numOfItems > 0)
                numOfItems--;
              else
                print('value cant be less than zero');
            });
          },),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:10.0),
          child: Text(numOfItems.toString().padLeft(2,'0'),
            style: Theme.of(context).textTheme.headline6,),
        ),
        BuildOutlineBtn(icon: Icons.add,onPressed: (){
          setState(() {
            numOfItems++;
          });
        },),
      ],
    );
  }
}


class BuildOutlineBtn extends StatelessWidget {
  final IconData icon;
  final Function onPressed;
  const BuildOutlineBtn({
    Key key,
    this.icon,
    this.onPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      width: 40,
      child: OutlineButton(
        padding: EdgeInsets.zero,
        onPressed: onPressed,
        child: Icon(icon),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}