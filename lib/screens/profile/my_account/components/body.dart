import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_app/constant.dart';
import 'package:e_commerce_app/models/userModel/user.dart';
import 'package:e_commerce_app/screens/profile/my_account/account_menu.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'chip_button.dart';

class Body extends StatefulWidget {
   Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
var controller = TextEditingController();
String? data;

var userUid = FirebaseAuth.instance.currentUser!.uid;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: getProportionateHeight(300, context),
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: (UserData.image == null)
                    ? AssetImage(
                        'assets/myIcons/defaultDpPic.webp')
                    : NetworkImage(UserData.image!) as ImageProvider,
              ),
            ),
          ),
          SizedBox(height: getProportionateHeight(30, context),),
          AccountMenu(
            text: UserData.name!,
            icon: Icons.person,
            press: () {
              buildShowDialog(
                 context: context,
                  text:'Change your name',
                  press: ()async{
                 if(data!=null) {
                   await FirebaseFirestore.instance.collection('users').doc(
                       userUid).update({
                     'userName': data,
                   });
                  await UserData.getUserData();
                   setState(() {

                   });
                   Navigator.of(context).pop();
                   data =null;
                   controller.clear();
                 }},
                  press2: (){
                    Navigator.of(context).pop();
                  }
              );
            },
          ),
          AccountMenu(
            text: UserData.phoneNumber!,
            icon: Icons.phone,
            press: () {
              buildShowDialog(
                  context: context,
                  text:'Change your Phone number',
                  press: ()async{
                 if(data!=null) {  await FirebaseFirestore.instance.collection('users').doc(userUid).update({
                      'phoneNumber':data,
                    });
                  await UserData.getUserData();
                   data=null;
                   controller.clear();
                    setState(() {

                    });
                    Navigator.of(context).pop();}
                  },
                  press2: (){
                    Navigator.of(context).pop();
                  }
              );
            },
          ),
          AccountMenu(
            text: UserData.address!,
            icon: Icons.location_city,
            press: () {
              buildShowDialog(
                  context: context,
                  text:'Change your address',
                  press: ()async{
                 if(data!=null) {
                   CircularProgressIndicator();
                   await FirebaseFirestore.instance.collection('users').doc(
                       userUid).update({
                     'address': data,
                   });
                  await UserData.getUserData();
                   data=null;
                   controller.clear();
                   setState(() {

                   });
                   Navigator.of(context).pop();
                 }},
                  press2: (){
                    Navigator.of(context).pop();
                  }
              );
            },
          ),
        ],
      ),
    );
  }

  Future<dynamic> buildShowDialog({BuildContext? context,String? text,Function()? press,Function()? press2}) {
    return showDialog(
            context: context!,
            builder: (context) => AlertDialog(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              title: Text(text!),
              content: SizedBox(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                  ),
                  autofocus: true,
                  onChanged: (value){
                    data=value;
                  },
                  controller: controller,
                ),
              ),
              actions: [
                ChipButton(
                    title: 'Yes',
                    action: press!),
                ChipButton(
                    title: 'No', action: press2!)
              ],
            ),
          );
  }
}
