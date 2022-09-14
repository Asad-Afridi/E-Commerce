import 'package:e_commerce_app/constant.dart';
import 'package:e_commerce_app/enums.dart';
import 'package:e_commerce_app/screens/profile/components/custom_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/screens/messages/components/body.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({Key? key}) : super(key: key);
  static String routeName = 'messages_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Messaging',
          style: TextStyle(color: kPrimaryColor,),
        ),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
