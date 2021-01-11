import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopping_app_ui/components/body.dart';
import 'package:shopping_app_ui/constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: Body(),
    );
  }
}

AppBar myAppBar(){

  return AppBar(
    backgroundColor: Colors.white,
    elevation: 3,
    leading: IconButton(
      icon: SvgPicture.asset("assets/icons/back.svg"),
      onPressed: (){
        print('i am clicked!!');
      },
    ),
    actions: [
      IconButton(
        icon:SvgPicture.asset("assets/icons/search.svg",color: kTextColor,),
        onPressed: (){},
      ),
      IconButton(
        icon:SvgPicture.asset("assets/icons/cart.svg",color: kTextColor,),
        onPressed: (){},
      ),
      SizedBox(width: 20,)
    ],
  );
}