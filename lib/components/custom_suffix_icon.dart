import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';
class CustomSuffixIcon extends StatelessWidget {
  CustomSuffixIcon({ required this.icon,required this.press
  }) ;
  IconData? icon;
  Function() press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0,
        getProportionateWidth(5,context),
        getProportionateWidth(5,context),
        getProportionateWidth(5,context),
      ),
      child: IconButton(
        onPressed: press,
        icon:Icon(icon),
      ),
    );
  }
}
