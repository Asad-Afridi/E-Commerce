import 'package:flutter/material.dart';
import '../../../components/rounded_icon_btn.dart';
import '../../../constant.dart';
import '../../../models/product.dart';
import '../../../size_config.dart';

class ColorDots extends StatelessWidget {
  const ColorDots({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    int selectedColor = 3;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateWidth(20,context)),
      child: Row(
        children: [
          ...List.generate(
              product.colors.length,
                  (index) => ColorDot(
                color: product.colors[index],
                isSelected: selectedColor == index,
              )),
          Spacer(),
          RoundedIconBtn(iconData: Icons.remove, press: (){}),
          SizedBox(width: getProportionateWidth(15,context),),
          RoundedIconBtn(iconData: Icons.add, press: (){}),
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.color,
    this.isSelected = false,
  }) : super(key: key);

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 2),
      padding: EdgeInsets.all(8),
      height: getProportionateWidth(40,context),
      width: getProportionateWidth(40,context),
      decoration: BoxDecoration(
        // color: product.colors[0],
          shape: BoxShape.circle,
          border: Border.all(
              color: isSelected ? kPrimaryColor : Colors.transparent)),
      child: DecoratedBox(
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}
