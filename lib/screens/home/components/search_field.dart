import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';

import '../../../constant.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.49,
      // height: 50,
      decoration: BoxDecoration(
          color: kSecondaryColor.withOpacity(0.15),
          borderRadius: BorderRadius.circular(15)),
      child: TextField(
        onChanged: (value) {},
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: 'Search Product',
          prefixIcon: Icon(
            Icons.search,
            color: kSecondaryColor,
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: Width(20,context),
            vertical: Width(9,context),
          ),
        ),
      ),
    );
  }
}