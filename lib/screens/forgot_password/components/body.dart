import 'package:e_commerce_app/screens/forgot_password/components/forgoton_form.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';
class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateWidth(20,context)),
          child: Column(
            children: [
              SizedBox(
                height: height * 0.1,
              ),
              Text(
                'Forgot Password',
                style: TextStyle(
                    fontSize: getProportionateWidth(28,context),
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Please enter your E-Mail and we will send \nyou a link to return to your account',
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: height * 0.1,
              ),
              ForgotPassForm(),
            ],
          ),
        ),
      ),
    );
  }
}

