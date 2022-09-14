import 'package:e_commerce_app/constant.dart';
import 'package:e_commerce_app/models/product.dart';
import 'package:e_commerce_app/screens/details/details_screen.dart';
import 'package:e_commerce_app/screens/home/components/product_card.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';

class FavouriteScreenBody extends StatelessWidget {
  const FavouriteScreenBody({Key? key}) : super(key: key);

//static String routeName= '/favourite_screen';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text(
              'Your Favourite Items',
              style: TextStyle(fontSize: 21,color: Colors.black87),
            ),
            Text('3 Items'),
            ...List.generate(demoProducts.length, (index) {
              if (demoProducts[index].isFavourite!)
                return CustomItemCard(
                  favouriteProduct: demoProducts[index],
                  press: () {
                    Navigator.pushNamed(
                      context,
                      DetailsScreen.routeName,
                      arguments: ProductDetailsArgument(
                        product: demoProducts[index],
                      ),
                    );
                  },
                );
              return SizedBox.shrink();
            }),
          ],
        ),
      ),
    );
  }
}

class CustomItemCard extends StatelessWidget {
  const CustomItemCard({
    Key? key,
    required this.favouriteProduct,
    required this.press,
  }) : super(key: key);
  final Product favouriteProduct;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateHeight(20, context),
          vertical: getProportionateHeight(10, context)),
      child: Row(
        children: [
          SizedBox(
            width: getProportionateWidth(88, context),
            child: AspectRatio(
              aspectRatio: 0.88,
              child: GestureDetector(
                onTap: press,
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xfff5f6f9),
                      borderRadius: BorderRadius.circular(15)),
                  child: Hero(
                    tag: favouriteProduct.title,
                      child: Image.asset(favouriteProduct.images[0])),
                ),
              ),
            ),
          ),
          SizedBox(
            width: getProportionateWidth(20, context),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width *0.58,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  favouriteProduct.title,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                  maxLines: 2,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text.rich(TextSpan(
                      text: '\$${favouriteProduct.price}',
                      style: TextStyle(
                        color: kPrimaryColor,
                      ),
                    )),
                    FavouriteIconButton(product: favouriteProduct),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
