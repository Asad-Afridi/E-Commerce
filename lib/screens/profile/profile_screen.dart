import 'package:e_commerce_app/constant.dart';
import 'package:e_commerce_app/enums.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/screens/profile/components/body.dart';
import 'components/custom_bottom_navigation_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  static String routeName = '/profile_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProfileBody(),
    );
  }
}


