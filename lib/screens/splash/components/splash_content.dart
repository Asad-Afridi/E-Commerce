import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  SplashContent({
    required this.image,
    required this.text,
    super.key,
  });
 final String? image, text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          "TOKOTO",
          style: TextStyle(
            fontSize: getProportionateWidth(36,context),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          '$text',
          textAlign: TextAlign.center,
        ),
        Spacer(
          flex: 2,
        ),
        Image.asset(
          image!,
          height: getProportionateHeight(265,context),
          width: getProportionateWidth(235,context),
        ),
      ],
    );
  }
}
