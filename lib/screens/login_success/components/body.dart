import 'package:e_commerce_app/components/default_button.dart';
import 'package:e_commerce_app/models/userModel/user.dart';
import 'package:e_commerce_app/screens/home/home_screen.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: height * 0.04,
          ),
          Image.asset(
            'assets/images/success.png',
            height: height * 0.4,
          ),
          SizedBox(
            height: height * 0.08,
          ),
          Text(
            'Login Success',
            style: TextStyle(
                color: Colors.black,
                fontSize: getProportionateWidth(30,context),
                fontWeight: FontWeight.bold),
          ),
          Spacer(),
          SizedBox(
            width: height* 0.58,
            child: DefaultButton(
              press: () async{
                await UserData.getUserData();
                Navigator.pushNamedAndRemoveUntil(context, HomeScreen.routeName, (Route<dynamic> route) => false);
              },
              text: 'Back to Home',
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
