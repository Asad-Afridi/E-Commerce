import 'package:e_commerce_app/models/product.dart';
import 'package:flutter/material.dart';

class Cart{
  final Product product;
  final int numOfItems;

  Cart({required this.product,required this.numOfItems});
}

List<Cart> demoCart=[
  Cart(product: demoProducts[0], numOfItems: 2),
  Cart(product: demoProducts[1], numOfItems: 1),
  Cart(product: demoProducts[2], numOfItems: 1)
];