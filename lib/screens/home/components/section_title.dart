import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';


class SectionTitle extends StatelessWidget {
  SectionTitle({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String? text;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Width(20,context)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text!,
            style: TextStyle(
              fontSize: Width(18,context),
              color: Colors.black,
            ),
          ),
          GestureDetector(
            onTap: press,
            child: Text('See More'),
          ),
        ],
      ),
    );
  }
}