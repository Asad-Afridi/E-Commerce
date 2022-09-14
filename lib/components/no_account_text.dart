import 'package:e_commerce_app/screens/sign_up/sign_up_screen.dart';
import 'package:flutter/material.dart';

import '../constant.dart';
import '../size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account?",
          style: TextStyle(
            fontSize: getProportionateWidth(16,context),
          ),
        ),
        GestureDetector(
          onTap: ()=>Navigator.pushNamed(context, SignUpScreen.routeName),
          child: Text(
            "Sign Up",
            style: TextStyle(
              fontSize: getProportionateWidth(16,context),
              color: kPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}