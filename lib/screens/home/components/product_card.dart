import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../models/product.dart';

class ProductCard extends StatelessWidget {
  ProductCard({
    required this.product,
    this.width = 140,
    this.aspectRatio = 1.02,
    required this.press
  });

  final double width, aspectRatio;
  final Product product;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: Width(20,context)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: Width(width,context),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: aspectRatio,
                child: Container(
                  padding: EdgeInsets.all(Width(20,context)),
                  decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Hero(
                      tag: product.title,
                      child: Image.asset(product.images[0])),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                product.title,
                style: TextStyle(
                  color: Colors.black,
                ),
                maxLines: 2,
              ),
              if (product.title.length<14) SizedBox(height: 19,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$${product.price}',
                    style: TextStyle(
                        fontSize: Width(18,context),
                        fontWeight: FontWeight.w600,
                        color: kPrimaryColor),
                  ),
                  FavouriteIconButton(product: product)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FavouriteIconButton extends StatelessWidget {
  const FavouriteIconButton({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      borderRadius: BorderRadius.circular(30),
      child: Container(
          alignment: Alignment.center,
          width: Width(28,context),
          height: Width(28,context),
          decoration: BoxDecoration(
              color: product.isFavourite!? kPrimaryLightColor.withOpacity(0.9)
                  :kSecondaryColor.withOpacity(0.1),
              shape: BoxShape.circle),
          child: Icon(
            Icons.favorite,
            color:product.isFavourite!? Color(0xffff4848): Color(0xffdbdee4),
            size: Width(18,context),
          )),
    );
  }
}