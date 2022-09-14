import 'package:e_commerce_app/screens/cart/cart_screen.dart';
import 'package:e_commerce_app/screens/home/components/search_field.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'icon_button_with_counter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Width(10,context),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MenuWidget(),
          SearchField(),
          IconButtonWithCounter(
            icon: Icons.shopping_cart_outlined,
            press: () {
              Navigator.pushNamed(context, CartScreen.routeName);
            },
          ),
          IconButtonWithCounter(
            icon: Icons.notifications_none,
            numOfItems: 3,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class MenuWidget extends StatelessWidget {
  const MenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  IconButton(onPressed: (){
      ZoomDrawer.of(context)!.toggle();
    }, icon: Icon(Icons.menu));
  }
}
