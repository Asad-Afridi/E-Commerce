import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserData{
  static String? name;
  static String? email;
  static String? phoneNumber;
  static String? address;
  static String? image;


  static getUserData()async{
    var user= await FirebaseAuth.instance.currentUser;
    if(user!=null){
    var  userUid= await user.uid;
    var collection = FirebaseFirestore.instance.collection('users');
    var docSnapshot = await collection.doc(userUid).get();
    if (docSnapshot.exists) {
      Map<String, dynamic>? data = docSnapshot.data();
      var userImage = data?['userImage']; // <-- The value you want to retrieve.
      var userName = data?['userName']; // <-- The value you want to retrieve.
      var userEmail = data?['email']; // <-- The value you want to retrieve.
      var userPhoneNumber = data?['phoneNumber']; // <-- The value you want to retrieve.
      var userAddress = data?['address']; // <-- The value you want to retrieve.
      // Call setState if needed.
      image = userImage;
      name = userName;
      email = userEmail;
      phoneNumber = userPhoneNumber;
      address = userAddress;
    }
    }
  }
}