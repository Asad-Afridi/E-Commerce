import 'package:e_commerce_app/components/socail_card.dart';
import 'package:e_commerce_app/screens/sign_in/components/sign_in_form.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';
import '../../../components/no_account_text.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateWidth(20,context),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: height* 0.04,),
                Text(
                  'Welcome Back',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateWidth(28,context),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Sign in with your E-Mail and Password  \nor continue with social media account',
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: height * 0.06,),
                SignForm(),
                SizedBox(height: height * 0.06,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      icon: 'assets/icons/gog.webp',
                      press: () {},
                    ),
                    SocialCard(
                      icon: 'assets/icons/fb.png',
                      press: () {},
                    ),
                    SocialCard(
                      icon: 'assets/icons/twit.jpg',
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(height: getProportionateHeight(20,context),),
                NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

