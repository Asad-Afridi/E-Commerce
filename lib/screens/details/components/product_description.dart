import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../models/product.dart';
import '../../../size_config.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key? key,
    required this.product,
    required this.seeMore
  }) : super(key: key);

  final Product product;
  final Function()? seeMore;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
          EdgeInsets.symmetric(horizontal: getProportionateWidth(20,context)),
          child: Text(
            product.title,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: EdgeInsets.all(getProportionateWidth(8,context)),
            width: getProportionateWidth(66,context),
            decoration: BoxDecoration(
              color: product.isFavourite!
                  ? Color(0xffffe6e6)
                  : Color(0xfff5f6f9),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: Icon(
              Icons.favorite,
              color: product.isFavourite!
                  ? Color(0xffff4848)
                  : Color(0xffdbdee4),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              right: getProportionateWidth(60,context),
              left: getProportionateWidth(20,context)),
          child: Text(
            product.description,
            maxLines: 3,
          ),
        ),
        Padding(
          padding:  EdgeInsets.symmetric(vertical: 8,horizontal: getProportionateWidth(20,context)),
          child: GestureDetector(
            onTap: seeMore,
            child: Row(
              children: [
                Text(
                  'See More',
                  style: TextStyle(
                      color: kPrimaryColor, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 5,),
                Icon(Icons.arrow_forward_ios,size: 15,color: kPrimaryColor,)
              ],
            ),
          ),
        ),
      ],
    );
  }
}