import 'package:flutter/material.dart';
import 'package:e_commerce_app/screens/login_success/components/body.dart';

class LoginSuccessScreen extends StatelessWidget {
  const LoginSuccessScreen({Key? key}) : super(key: key);
  static String routeName = '/login_success_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login Success',
          style: TextStyle(
            color: Color(0xFF8B8B8B),
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        leading: SizedBox(),
      ),
      body: Body(),
    );
  }
}
