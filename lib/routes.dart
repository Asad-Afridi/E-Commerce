import 'package:e_commerce_app/screens/cart/cart_screen.dart';
import 'package:e_commerce_app/screens/complete_profile/complete_profie_screen.dart';
import 'package:e_commerce_app/screens/details/details_screen.dart';
import 'package:e_commerce_app/screens/drawer/home_view.dart';
import 'package:e_commerce_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:e_commerce_app/screens/home/home_screen.dart';
import 'package:e_commerce_app/screens/login_success/login_success_screen.dart';
import 'package:e_commerce_app/screens/messages/messages_screen.dart';
import 'package:e_commerce_app/screens/onLoading/on_loading_screen.dart';
import 'package:e_commerce_app/screens/profile/my_account/my_account_screen.dart';
import 'package:e_commerce_app/screens/profile/profile_screen.dart';
import 'package:e_commerce_app/screens/sign_in/sign_in_screen.dart';
import 'package:e_commerce_app/screens/sign_up/sign_up_screen.dart';
import 'package:e_commerce_app/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';



final Map<String, WidgetBuilder > routes= {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPassword.routeName: (context) => ForgotPassword(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName:(_)=>DetailsScreen(),
  CartScreen.routeName: (context)=>CartScreen(),
  ProfileScreen.routeName: (context)=>ProfileScreen(),
  OnLoadingScreen.routeName:(context)=>OnLoadingScreen(),
  MessagesScreen.routeName:(context)=>MessagesScreen(),
  HomeView.routName:(context)=>HomeView(),
  MyAccountScreen.routeName : (context)=>MyAccountScreen(),

};