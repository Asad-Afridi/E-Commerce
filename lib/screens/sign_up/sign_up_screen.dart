import 'package:flutter/material.dart';
import 'package:e_commerce_app/screens/sign_up/components/body.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  static String routeName = '/sign_up';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign Up',
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
