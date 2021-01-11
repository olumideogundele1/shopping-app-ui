import 'package:flutter/material.dart';

import '../constants.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {

  List<String> list = [
    "Hand Bag",
    "Jewellry",
    "FootWear",
    "Dresses"
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: ListView.builder(
        itemBuilder: (context,index){
          return Padding(
            padding: EdgeInsets.symmetric(horizontal:25.0),
            child: Column(
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      if(selectedIndex != index)
                        selectedIndex = index;
                    });
                  },
                  child: Text(list[index],
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: selectedIndex == index ? kTextColor : kTextLightColor
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  alignment: Alignment.center,
                  height: 2,
                  width: 30,
                  color: selectedIndex == index ? Colors.black : Colors.transparent,
                )
              ],
            ),
          );
        },
        itemCount: list.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

