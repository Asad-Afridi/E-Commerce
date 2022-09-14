import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../models/cart.dart';
import '../../../size_config.dart';
class CustomItemCard extends StatelessWidget {
  const CustomItemCard({required this.cart,
    Key? key,
  }) : super(key: key);
  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: getProportionateWidth(88,context),
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xfff5f6f9),
                  borderRadius: BorderRadius.circular(15)),
              child: Image.asset(cart.product.images[0]),
            ),
          ),
        ),
        SizedBox(
          width: getProportionateWidth(20,context),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cart.product.title,
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
              maxLines: 2,
            ),
            const SizedBox(height: 10,),
            Text.rich(TextSpan(
                text: '\$${cart.product.price}',
                style: TextStyle(
                  color: kPrimaryColor,
                ),
                children:[
                  TextSpan(
                      text: ' x${cart.numOfItems}',
                      style: TextStyle(color: kTextColor)
                  )
                ]
            ))
          ],
        )
      ],
    );
  }
}