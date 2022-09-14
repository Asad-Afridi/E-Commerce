import 'dart:async';

import 'package:e_commerce_app/constant.dart';
import 'package:e_commerce_app/screens/home/home_screen.dart';
import 'package:e_commerce_app/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

import '../login_success/login_success_screen.dart';

class OnLoadingScreen extends StatefulWidget {
  const OnLoadingScreen({Key? key}) : super(key: key);

  static String routeName = 'onLoading_screen';

  @override
  State<OnLoadingScreen> createState() => _OnLoadingScreenState();
}

class _OnLoadingScreenState extends State<OnLoadingScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2),
        () => Navigator.pushNamed(context, HomeScreen.routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Text(
            'TOKOTO',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Color(0xff9a2ea1)),
          ),
          Image.asset(
            'assets/myIcons/n shop.jpg',
            //color: kPrimaryColor,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'From HaiK\'s',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Color(0xff9a2ea1)),
              ),
              Image.asset(
                'assets/myIcons/developer_logo.png',
                height: 50,
              ),
            ],
          )
        ],
      ),
    );
  }
}
