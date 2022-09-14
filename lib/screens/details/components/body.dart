import 'package:e_commerce_app/components/default_button.dart';
import 'package:e_commerce_app/models/product.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';
import 'color_dots.dart';
import 'product_description.dart';
import 'product_images.dart';
import 'top_rounded_container.dart';

class Body extends StatelessWidget {
  Body({required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product: product),
          TopRoundedContainer(
            colors: Colors.white,
            child: Column(
              children: [
                ProductDescription(
                  product: product,
                  seeMore: () {},
                ),
                TopRoundedContainer(
                  colors: Color(0xfff6f7f9),
                  child: Column(
                    children: [
                      ColorDots(product: product),
                      TopRoundedContainer(
                          colors: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: width * 0.15,
                              right: width * 0.15,
                              top: getProportionateWidth(15,context),
                              bottom: getProportionateWidth(40,context),
                            ),
                            child: DefaultButton(
                              text: 'Add to Cart',
                              press: () {},
                            ),
                          )),
                      //SizedBox(height: 10,)
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
