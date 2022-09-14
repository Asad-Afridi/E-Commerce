import 'package:flutter/material.dart';

import '../details_screen.dart';

class ProductRatings extends StatelessWidget {
  const ProductRatings({
    Key? key,
    required this.ratings,
  }) : super(key: key);

  final ProductDetailsArgument ratings;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 15, 10, 10),
      width: 70,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14)
      ),
      alignment: Alignment.center,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            width: 13,
          ),
          Text(
            '${ratings.product.rating}',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            width: 4,
          ),
          Icon(
            Icons.star,
            color: Colors.amber,
            size: 18,
          )
        ],
      ),
    );
  }
}