


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

sendMessage(String message)async{
  User loggedInUser = await FirebaseAuth.instance.currentUser!;
  await FirebaseFirestore.instance.collection('messages').add({
    'text':message,
    'sender':loggedInUser.email,
    'createdAt': Timestamp.now().millisecondsSinceEpoch
  });
}