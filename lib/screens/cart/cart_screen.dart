import 'package:e_commerce_app/components/default_button.dart';
import 'package:e_commerce_app/constant.dart';
import 'package:e_commerce_app/models/cart.dart';
import 'package:e_commerce_app/screens/cart/components/body.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);
  static String routeName = '/cart_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: CheckOurCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            'Your Cart',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          Text(
            '${demoCart.length} Items',
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
      centerTitle: true,
    );
  }
}

class CheckOurCard extends StatelessWidget {
  const CheckOurCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: getProportionateWidth(15,context),
          horizontal: getProportionateWidth(20,context)),
     // height: 140,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -15),
              blurRadius: 20,
              color: Color(0xffdadada).withOpacity(0.3),
            )
          ]),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Container(
                  height: getProportionateWidth(40,context),
                  width: getProportionateWidth(40,context),
                  decoration: BoxDecoration(
                    color: Color(0xfff5f6f9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    Icons.receipt_long,
                    color: kPrimaryColor,
                  ),
                ),
                Spacer(),
                Text('Add Voucher Code'),
                const SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 14,
                  color: kTextColor,
                )
              ],
            ),
            SizedBox(
              height: getProportionateHeight(20,context),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    text: 'Total\n',
                    children: [
                      TextSpan(
                          text: '\$337.15',
                          style: TextStyle(fontSize: 16, color: Colors.black)),
                    ],
                  ),
                ),
                SizedBox(
                    width: getProportionateWidth(190,context),
                    child: DefaultButton(
                      text: 'Check Out',
                      press: () {},
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
