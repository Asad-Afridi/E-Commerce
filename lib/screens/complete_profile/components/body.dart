import 'package:e_commerce_app/constant.dart';
import 'package:e_commerce_app/screens/complete_profile/components/complete_profile_form.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateWidth(20,context)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: height * 0.01,),
              Text(
                'Complete Profile',
                style: headingStyle,
              ),
              Text(
                'Complete your detail or continue \nwith social media',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: height * 0.02,),
              CompleteProfileForm(),
              SizedBox(
                height: getProportionateHeight(20,context),
              ),
              Text(
                'By continuing you are confirm that you agree \nwith our Terms and Conditions',
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
