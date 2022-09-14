import 'package:e_commerce_app/models/product.dart';
import 'package:e_commerce_app/screens/home/components/home_header.dart';
import 'package:e_commerce_app/screens/home/components/product_card.dart';
import 'package:e_commerce_app/screens/home/components/special_offers.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';
import 'categories.dart';
import 'discount_banner.dart';
import 'popular_products.dart';
import 'section_title.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: Height(20,context)),
            HomeHeader(),
            SizedBox(height: Height(30,context)),
            DiscountBanner(),
            SizedBox(height: Height(30,context)),
            Categories(),
            SizedBox(height: Height(30,context)),
            SpecialOffers(),
            SizedBox(height: Height(30,context)),
            PopularProducts(),
            SizedBox(height: Height(30,context)),
          ],
        ),
      ),
    );
  }
}



