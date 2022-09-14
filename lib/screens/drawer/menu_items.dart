import 'package:flutter/material.dart';

class MenuItems{
  static const home = MenuItemm('Home',Icons.home_filled);
  static const favorite = MenuItemm('Favourites',Icons.favorite);
  static const messages = MenuItemm('Messages',Icons.message);
  static const profile = MenuItemm('Profile',Icons.person);
  //static const settings = MenuItemm('Settings',Icons.settings);

  static const all =<MenuItemm>[
    home,messages,favorite,profile,
  ];
}

class MenuItemm{
  final String title;
  final IconData icon;

   const MenuItemm ( this.title, this.icon);
}