import 'package:e_commerce_app/screens/sign_up/components/sign_up_form.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';
import '../../../components/socail_card.dart';
import '../../../constant.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: getProportionateWidth(20,context)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: height * 0.01,
              ),
              Text(
                'Register Account',
                style: headingStyle,
              ),
              Text(
                'Complete your details or continue \nwith social media',
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: height * 0.1,
              ),
              SignUpForm(),
              SizedBox(
                height: height * 0.09,
              ),
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
              SizedBox(
                height: getProportionateHeight(20,context),
              ),
              Text('By Continuing you confirm that you are agree \nwith our terms and conditions',
              textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

