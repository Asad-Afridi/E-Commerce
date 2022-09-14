import 'package:flutter/material.dart';

import '../../../size_config.dart';

class TopRoundedContainer extends StatelessWidget {
  TopRoundedContainer({
    required this.colors,
    required this.child,
    Key? key,
  }) : super(key: key);
  final Color colors;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: getProportionateWidth(20,context)),
        margin: EdgeInsets.only(top: getProportionateWidth(20,context)),
        width: double.infinity,
        decoration: BoxDecoration(
          color: colors,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: child);
  }
}