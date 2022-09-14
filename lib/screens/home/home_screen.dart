import 'package:e_commerce_app/enums.dart';
import 'package:e_commerce_app/screens/favourite_items/favourite_items_screen.dart';
import 'package:e_commerce_app/screens/messages/messages_screen.dart';
import 'package:e_commerce_app/screens/profile/components/body.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/screens/home/components/body.dart';
import 'package:e_commerce_app/screens/profile/components/custom_bottom_navigation_bar.dart';

import '../../constant.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);
  static String routeName = '/home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> myScreen = [HomeBody(), ProfileBody(),FavouriteScreenBody()];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    final Color inActiveColor = Color(0xffb6b6b6);
    return Scaffold(
        body: myScreen[index],
        bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(
            vertical: 20,
          ),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, -15),
                    blurRadius: 20,
                    color: Color(0xffdadada).withOpacity(0.3)),
              ]),
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    index=0;
                    setState(() {

                    });
                  },
                  icon: Icon(
                   index==0 ? Icons.shop : Icons.shop_outlined,
                    color: index == 0 ? kPrimaryColor : inActiveColor,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    index=2;
                    setState(() {

                    });
                  },
                  icon: Icon(
                   index ==2 ? Icons.favorite : Icons.favorite_outline,
                    color: index == 2 ? kPrimaryColor : inActiveColor,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, MessagesScreen.routeName);
                  },
                  icon: Icon(
                    Icons.chat,
                    color: inActiveColor,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    index = 1;
                    setState(() {

                    });
                  },
                  icon: Icon(
                    index==1 ? Icons.person : Icons.person_outline,
                    color: index == 1 ? kPrimaryColor : inActiveColor,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
