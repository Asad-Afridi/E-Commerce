import 'package:flutter/material.dart';
import '../../components/rounded_icon_btn.dart';
import '../../models/product.dart';
import 'components/product_ratings.dart';
import 'package:e_commerce_app/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  DetailsScreen({Key? key}) : super(key: key);
  static String routeName = '/details_screen';

  @override
  Widget build(BuildContext context) {
    final argument =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArgument;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: RoundedIconBtn(
                  iconData: Icons.arrow_back,
                  press: () {
                    Navigator.of(context).pop();
                  })),
          actions: [ProductRatings(ratings: argument)]),
      backgroundColor: Color(0xfff5f6f9),
      body: Body(product: argument.product),
    );
  }
}

class ProductDetailsArgument {
  final Product product;

  ProductDetailsArgument({required this.product});
}
