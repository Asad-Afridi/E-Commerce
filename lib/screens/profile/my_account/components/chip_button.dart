import 'package:e_commerce_app/constant.dart';
import 'package:flutter/material.dart';

class ChipButton extends StatelessWidget {
  const ChipButton({Key? key,required this.title,required this.action}) : super(key: key);
  final String title;
  final Function() action;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action,
      child: Container(
        margin: EdgeInsets.only(bottom: 5,right: 5),
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 8),
        decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(20)
        ),
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}