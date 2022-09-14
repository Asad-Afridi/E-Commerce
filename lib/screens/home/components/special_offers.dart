import 'package:e_commerce_app/screens/home/components/section_title.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';



class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: 'Special for you',
          press: () {},
        ),
        SizedBox(height: Height(20,context),),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SocialOfferCard(
                image: 'assets/images/Image Banner 2.png',
                category: 'Smartphone',
                numOfBrand: 20,
                press: () {},
              ),
              SocialOfferCard(
                image: 'assets/images/Image Banner 3.png',
                category: 'Fashion',
                numOfBrand: 30,
                press: () {},
              ),
              SizedBox(
                width: Width(20,context),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class SocialOfferCard extends StatelessWidget {
  SocialOfferCard({
    Key? key,
    required this.category,
    required this.image,
    required this.numOfBrand,
    required this.press,
  }) : super(key: key);
  final String category, image;
  final int numOfBrand;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: Width(20,context)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: Width(250,context),
          height: Height(120,context),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(
                          image,
                        ),
                        fit: BoxFit.cover)),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFF343434).withOpacity(0.4),
                          Color(0xFF343434).withOpacity(0.15),
                        ])),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Width(15,context),
                    vertical: Width(10,context)),
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(color: Colors.white),
                    children: [
                      TextSpan(
                          text: '$category\n',
                          style: TextStyle(
                              fontSize: Width(18,context),
                              fontWeight: FontWeight.bold)),
                      TextSpan(text: '$numOfBrand Brands')
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}