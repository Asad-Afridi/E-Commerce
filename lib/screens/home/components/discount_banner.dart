import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';



class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Width(20,context)),
      padding: EdgeInsets.symmetric(
          vertical: Width(13,context),
          horizontal: Width(20,context)),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFF4A3292),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text.rich(
        TextSpan(
            text: 'A Summer Surprise\n',
            style: TextStyle(color: Colors.white),
            children: [
              TextSpan(
                  text: 'Cashback 20%',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))
            ]),
      ),
    );
  }
}