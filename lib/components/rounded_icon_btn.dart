import 'package:flutter/material.dart';

import '../constant.dart';
import '../size_config.dart';
class RoundedIconBtn extends StatelessWidget {
  const RoundedIconBtn({
    required this.iconData,required this.press
  }) ;
  final IconData iconData;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateWidth(40,context),
      width: getProportionateWidth(40,context),
      child: TextButton(
        style: TextButton.styleFrom(
          primary: kSecondaryColor,
          padding: EdgeInsets.zero,
          onSurface: Colors.white,
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50)
          ),
        ),
        onPressed: press,
        child: Icon(
          iconData,
          color: Colors.black,
        ),
      ),
    );
  }
}