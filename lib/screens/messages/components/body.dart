import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_app/constant.dart';
import 'package:e_commerce_app/screens/messages/components/message_stream.dart';
import 'package:e_commerce_app/services/data_storing/chat/chat_data_storing_funcs.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  User loggedInUser =  FirebaseAuth.instance.currentUser!;
  String? messageText;
  var controller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          MessageStream(firestore: _firestore,loggedInUser:loggedInUser),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(color: kPrimaryLightColor, width: 2))),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: kSecondaryColor.withOpacity(0.15),
                        borderRadius: BorderRadius.circular(30)),
                    child: TextField(
                      controller: controller,
                      onChanged: (value) {
                        messageText = value;
                      },
                      decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        hintText: 'Enter your message here...',
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      ),
                    ),
                  ),
                ),
                RawMaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)),
                  constraints: BoxConstraints(minWidth: 40, minHeight: 40),
                  fillColor: kPrimaryColor,
                  onPressed: () {
                    controller.clear();
                    if (messageText != null) {
                      sendMessage(messageText!);
                      messageText = null;
                    }
                  },
                  child: Icon(
                    Icons.send,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
