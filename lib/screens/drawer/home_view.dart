import 'package:e_commerce_app/constant.dart';
import 'package:e_commerce_app/screens/drawer/menu_items.dart';
import 'package:e_commerce_app/screens/home/home_screen.dart';
import 'package:e_commerce_app/screens/messages/messages_screen.dart';
import 'package:e_commerce_app/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import 'menu_screen.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);
static String routName="/home_screen";
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  MenuItemm currentItem = MenuItems.home;
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
     // slideWidth: MediaQuery.of(context).size.width*.70,
      style: DrawerStyle.defaultStyle,
      menuScreen: Builder(
        builder:(context)=> MenuScreen(
            currentItem:currentItem,
          onSelected: (item){
              setState(() {
                currentItem=item;
              });
              ZoomDrawer.of(context)?.close();
          },
        ),
      ),
      mainScreen: getScreen(),
      borderRadius: 24.0,
      angle: 0,
     // drawerShadowsBackgroundColor: Colors.grey[300]!,
      slideWidth: MediaQuery.of(context).size.width*.65,
      openCurve: Curves.fastOutSlowIn,
      closeCurve: Curves.bounceIn,
      showShadow: true,
      menuBackgroundColor: kPrimaryColor,
    );
  }

  Widget  getScreen() {
    switch (currentItem){
      case MenuItems.home:
        return HomeScreen();
      case MenuItems.messages:
        return MessagesScreen();
      case MenuItems.profile:
      default:
        return ProfileScreen();
    }
  }
}
