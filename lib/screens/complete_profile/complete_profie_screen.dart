import 'package:flutter/material.dart';
import 'package:e_commerce_app/screens/complete_profile/components/body.dart';

class CompleteProfileScreen extends StatelessWidget {
  const CompleteProfileScreen({Key? key}) : super(key: key);
  static String routeName = '/complete_profile';

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
