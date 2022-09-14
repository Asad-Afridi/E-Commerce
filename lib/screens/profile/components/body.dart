import 'package:e_commerce_app/constant.dart';
import 'package:e_commerce_app/screens/profile/my_account/my_account_screen.dart';
import 'package:e_commerce_app/screens/sign_in/sign_in_screen.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'profile_menu.dart';
import 'profile_pic.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(height: getProportionateHeight(20, context),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Profile',style: TextStyle(color: kTextColor,fontSize: 25),)
            ],
          ),
          SizedBox(height: getProportionateHeight(20, context),),
          SingleChildScrollView(
            child: Column(
              children: [
                ProfilePic(),
                SizedBox(height: 10),
                ProfileMenu(
                  icon: Icons.person,
                  text: 'My Account',
                  press: (){
                    Navigator.pushNamed(context, MyAccountScreen.routeName);
                  },
                ),
                ProfileMenu(
                  icon: Icons.notifications,
                  text: 'Notifications',
                  press: (){},
                ),
                ProfileMenu(
                  icon: Icons.settings,
                  text: 'Settings',
                  press: (){},
                ),
                ProfileMenu(
                  icon: Icons.help,
                  text: 'Help Center',
                  press: (){
                  },
                ),
                ProfileMenu(
                  icon: Icons.logout,
                  text: 'Log Out',
                  press: (){
                    FirebaseAuth.instance.signOut();
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => SignInScreen()),
                        (Route<dynamic> route) => false);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

