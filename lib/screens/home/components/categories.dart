import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';



class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {'icon': 'assets/myIcons/flash.webp', 'text': 'Flash Deal'},
      {'icon': 'assets/myIcons/Bill Icon.jpg', 'text': 'Bill'},
      {'icon': 'assets/myIcons/Game Icon.png', 'text': 'Game'},
      {'icon': 'assets/myIcons/Gift Icon.jpg', 'text': 'Daily Gift'},
      {'icon': 'assets/myIcons/Discover.webp', 'text': 'More'},
    ];
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: Width(20,context)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
              categories.length,
                  (index) => CategoryCard(
                icon: categories[index]['icon'],
                text: categories[index]['text'],
                press: () {},
              ))
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  CategoryCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String icon, text;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: Width(55,context),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(Width(13,context)),
                decoration: BoxDecoration(
                    color: Color(0xffffecdf),
                    borderRadius: BorderRadius.circular(10)),
                child: Image.asset(
                  icon,
                  color: Colors.deepOrange,
                ),
              ),
            ),
            Text(
              text,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}