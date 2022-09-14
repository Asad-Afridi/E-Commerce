// ignore_for_file: prefer_const_constructors
import 'package:e_commerce_app/models/userModel/user.dart';
import 'package:e_commerce_app/routes.dart';
import 'package:e_commerce_app/screens/drawer/home_view.dart';
import 'package:e_commerce_app/screens/sign_in/sign_in_screen.dart';
import 'package:e_commerce_app/themes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await UserData.getUserData();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "E-Commerce App",
      theme: theme(),
      initialRoute:FirebaseAuth.instance.currentUser!=null? HomeView.routName: SignInScreen.routeName,
      routes: routes,
    );
  }
}
