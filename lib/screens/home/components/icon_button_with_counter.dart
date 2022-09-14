import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';

import '../../../constant.dart';


class IconButtonWithCounter extends StatelessWidget {
  IconButtonWithCounter({
    required this.icon,
    this.numOfItems = 0,
    required this.press,
    Key? key,
  }) : super(key: key);

  final IconData icon;
  final int numOfItems;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        children: [
          Container(
            height: Height(50,context),
            width: Width(50,context),
            decoration: BoxDecoration(
                color: kSecondaryColor.withOpacity(0.15),
                shape: BoxShape.circle),
            child: Icon(icon),
          ),
          if (numOfItems != 0)
            Positioned(
              right: 0,
              top: -2,
              child: Container(
                height: Height(18,context),
                width: Width(18,context),
                decoration: BoxDecoration(
                    color: Color(0xFFFF4848),
                    shape: BoxShape.circle,
                    border: Border.all(width: 1.5, color: Colors.white)),
                child: Center(
                    child: Text(
                      '$numOfItems',
                      style: TextStyle(
                          color: Colors.white,
                          height: 1,
                          fontSize: 10,
                          fontWeight: FontWeight.w600),
                    )),
              ),
            ),
        ],
      ),
    );
  }
}