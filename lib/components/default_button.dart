import 'package:e_commerce_app/screens/sign_in/sign_in_screen.dart';
import 'package:flutter/material.dart';

import '../constant.dart';
import '../size_config.dart';

class DefaultButton extends StatelessWidget {
  DefaultButton({required this.press,required this.text
  });
  final Function() press;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateHeight(56,context),
      child: RawMaterialButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          fillColor: kPrimaryColor,
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(
              fontSize: getProportionateWidth(18,context),
              color: Colors.white,
            ),
          )),
    );
  }
}