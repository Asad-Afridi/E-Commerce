import 'package:e_commerce_app/screens/details/details_screen.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';
import '../../../models/product.dart';
import 'product_card.dart';
import 'section_title.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(text: 'Popular Products', press: () {}),
        SizedBox(height: Height(20,context)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(),
              ...List.generate(demoProducts.length, (index) {
                if (demoProducts[index].isPopular!)
                  return ProductCard(
                    product: demoProducts[index],
                    press: () => Navigator.pushNamed(
                        context, DetailsScreen.routeName,
                        arguments: ProductDetailsArgument(
                            product: demoProducts[index])),
                  );
                return SizedBox.shrink();
              }),
              SizedBox(
                width: Width(20,context),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
