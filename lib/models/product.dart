import 'package:flutter/material.dart';

class Product{
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double? rating, price;
  final bool ?isFavourite, isPopular;

  Product({
    required this.title,
    required this.description,
    required this.images,
    required this.colors,
    required this.price,
    this.isFavourite,
    this.isPopular,
    this.rating,
});


  Map<String, dynamic> toJson() => {
    'title': title,
    'description': description,
    'images': images,
    'colors': colors,
    'price': price,
    'isFavourite': isFavourite,
    'isPopular': isPopular,
    'rating': rating,
  };

  get id => null;
}


List<Product> demoProducts =[
  Product(
    images: [
      'assets/images/ps4_console_white_1.png',
      'assets/images/ps4_console_white_2.png',
      'assets/images/ps4_console_white_3.png',
      'assets/images/ps4_console_white_4.png',
    ],
    colors: [
      Color(0xFFF6625e),
      Color(0xFF836dbb),
      Color(0xFFdecb9c),
      Colors.white,
    ],
    title: 'Wireless controller for PS4™',
    price: 69.99,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    images: [
      'assets/images/Image Popular Product 2.png',
    ],
    colors: [
      Color(0xFFF6625e),
      Color(0xFF836dbb),
      Color(0xFFdecb9c),
      Colors.white,
    ],
    title: 'Nike Sport White - Man Pant',
    price: 60.5,
    description: description,
    rating: 4.1,
    isPopular: true,
    isFavourite: false
  ),
  Product(
    images: [
      'assets/images/glap.png',
    ],
    colors: [
      Color(0xFFF6625e),
      Color(0xFF836dbb),
      Color(0xFFdecb9c),
      Colors.white,
    ],
    title: 'Gloves XC Omega - Polygon',
    price: 46.55,
    description: description,
    rating: 4.4,
    isPopular: true,
    isFavourite: true,
  ),
  Product(
    images: [
      'assets/images/wireless headset.png',
    ],
    colors: [
      Color(0xFFF6625e),
      Color(0xFF836dbb),
      Color(0xFFdecb9c),
      Colors.white,
    ],
    title: 'Logitech Head',
    price: 30.30,
    description: description,
    rating: 4.3,
    isFavourite: false,
    isPopular: true
  ),
];

const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";
