import 'package:flutter/material.dart';

class Products {

  final String image, title, description;
  final int price, size, id;
  final Color color;



  Products(
      {this.image, this.title, this.description, this.price, this.size, this.id, this.color});

  static String dummyText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
      "Mauris et fermentum tellus. Vestibulum eu efficitur est. "
      "Nulla eu nunc quis diam condimentum fermentum at ac eros. "
      "Etiam et consectetur elit. Nam nunc libero, blandit vel mollis eget,"
      " imperdiet nec lectus. Morbi eros enim, tempor vitae neque in, "
      "aliquam sollicitudin arcu. Ut non metus sed massa pellentesque ultricies et in elit."
      " Cras vitae placerat dui. In accumsan elit nec turpis tempus, in maximus augue venenatis. "
      "Nulla consectetur mollis purus, eget convallis leo ultrices quis. "
      "Praesent scelerisque, dolor et viverra efficitur, neque ipsum suscipit odio, consequat dignissim ipsum enim quis lacus. "
      "Duis viverra consequat ipsum vitae commodo. Nulla et sapien sit amet erat consectetur faucibus sed eu sem. Fusce sed mauris et metus porta rhoncus.";

}
  List<Products> products = [
    Products(
      id: 1,
      title: "Office Code",
      price: 234,
      size: 12,
      description: Products.dummyText,
      image: "assets/images/bag_1.png",
      color: Color(0xFF3D82AE)
    ),
    Products(
        id: 2,
        title: "Belt Bag",
        price: 244,
        size: 8,
        description: Products.dummyText,
        image: "assets/images/bag_2.png",
        color: Color(0xFFD3A984)
    ),
    Products(
        id: 3,
        title: "Hang Top",
        price: 254,
        size: 10,
        description: Products.dummyText,
        image: "assets/images/bag_3.png",
        color: Color(0xFF989493)
    ),
    Products(
        id: 4,
        title: "Old Fashion",
        price: 264,
        size: 12,
        description: Products.dummyText,
        image: "assets/images/bag_5.png",
        color: Color(0xFFFB7883)
    ),
    Products(
        id: 5,
        title: "Office Code",
        price: 274,
        size: 11,
        description: Products.dummyText,
        image: "assets/images/bag_4.png",
        color: Color(0xFFD3A770)
    ),
    Products(
        id: 6,
        title: "Office Code",
        price: 274,
        size: 12,
        description: Products.dummyText,
        image: "assets/images/bag_6.png",
        color: Color(0xFFAEAEAE)
    )
  ];

