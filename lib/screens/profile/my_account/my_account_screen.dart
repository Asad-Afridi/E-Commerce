import 'package:e_commerce_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/screens/profile/my_account/components/body.dart';

class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({Key? key}) : super(key: key);
static String routeName = '/my_account_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Account',style: TextStyle(color: kSecondaryColor),),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
