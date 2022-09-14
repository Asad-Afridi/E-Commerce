import 'package:flutter/material.dart';

import '../size_config.dart';

class SocialCard extends StatelessWidget {
  SocialCard({ this.icon,this.press
  });
  final String ?icon;
  final Function() ?press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: getProportionateWidth(10,context)),
        padding: EdgeInsets.all(getProportionateWidth(12,context)),
        height: getProportionateHeight(50,context),
        width: getProportionateWidth(50,context),
        decoration: BoxDecoration(
            color: Color(0xFFF5F6F9),
            shape: BoxShape.circle,
            image: DecorationImage(
                image: AssetImage(icon!)
            )
        ),
        // child: Image.asset('assets/icons/fb.png',),
      ),
    );
  }
}