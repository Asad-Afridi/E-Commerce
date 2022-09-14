import 'package:e_commerce_app/constant.dart';
import 'package:e_commerce_app/models/cart.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';
import 'cart_item_card.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: getProportionateWidth(20,context)),
      child: ListView.builder(
          itemCount: demoCart.length,
          itemBuilder: (context, index) => Padding(
            padding:  EdgeInsets.symmetric(vertical: 10),
            child: Dismissible(
              direction: DismissDirection.endToStart,
                key: Key(demoCart[index].product.id.toString()),
                background: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Color(0xffffe6e6),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Spacer(),
                      Icon(
                        Icons.delete_outline,
                        color: kPrimaryColor,
                        size: 30,
                      )
                    ],
                  ),
                ),
               // onDismissed: (direction){
                //setState((){
                 // demoCart.removeAt(index);
                //});
                //},
                child: CustomItemCard(
                  cart: demoCart[index],
                )),
          )),
    );
  }
}
