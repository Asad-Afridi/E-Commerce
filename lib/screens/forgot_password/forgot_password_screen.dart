import 'package:e_commerce_app/constant.dart';
import 'package:e_commerce_app/screens/forgot_password/components/body.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  static String routeName = '/forgot_password_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Forgot Password',
          style: TextStyle(
            color: Color(0xFF8B8B8B),
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
