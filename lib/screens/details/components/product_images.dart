import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../models/product.dart';
import '../../../size_config.dart';

class ProductImages extends StatefulWidget {
  ProductImages({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  State<ProductImages> createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int selectedImage=0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getProportionateWidth(200,context),
          child: AspectRatio(
            aspectRatio: 1,
            child: Hero(
                tag: widget.product.title,
                child: Image.asset(widget.product.images[selectedImage])),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(widget.product.images.length, (index) => buildSmallPreview(index)),
          ],
        )
      ],
    );
  }

  Widget buildSmallPreview(int index) {
    return GestureDetector(
      onTap: (){
        setState((){
          selectedImage=index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: getProportionateWidth(15,context)),
        padding: EdgeInsets.all(getProportionateWidth(5,context)),
        height: getProportionateWidth(50,context),
        width: getProportionateWidth(50,context),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color:selectedImage==index? kPrimaryColor : Colors.transparent)
        ),
        child: Image.asset(widget.product.images[index]),
      ),
    );
  }
}