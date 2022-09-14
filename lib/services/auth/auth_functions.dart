import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce_app/screens/complete_profile/complete_profie_screen.dart';
import 'package:e_commerce_app/screens/home/home_screen.dart';
import 'package:e_commerce_app/screens/login_success/login_success_screen.dart';
import 'package:e_commerce_app/screens/otp/otp_screen.dart';
import 'package:e_commerce_app/utils/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class AuthServices {
 static signUp([String? email,
    String? password,
    BuildContext? context,
    String? firstName,
    String? lastName,
    String? phoneNumber,
    String? otpCode,
    String? address]) async {
    //////// SignUp with Email And Password /////////
    try {
      if (email != null && password != null) {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);
        Navigator.pushNamed(context!, CompleteProfileScreen.routeName);
      }
      var user = await FirebaseAuth.instance.currentUser!;
      var userEmail = user.email;
      await FirebaseFirestore.instance.collection('users').doc(user.uid).set({
        'email': userEmail,
        'userName': '$firstName $lastName',
        'phoneNumber': phoneNumber,
        'address': address,
        'rememberMe': false,
        'userImage':'',
      });
      if (firstName != null)
        Navigator.pushNamedAndRemoveUntil(
            context!, LoginSuccessScreen.routeName,
                (Route<dynamic> route) => false);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        Utils.flushBarErrorMessage(context: context, message: 'Weak Password');
      } else if (e.code == 'email-already-in-use') {
        Utils.flushBarErrorMessage(
            context: context, message: 'Email already in use');
      }
    } catch (e) {
      print(e);
    }
  }

/////// Authenticate With Phone Number ///////////
//   else {
//     print('+++++++$phoneNumber++++++++');
//     print('+++++++$firstName++++++++');
//     print('+++++++$lastName++++++++');
//     print('+++++++$address++++++++');
//     await FirebaseAuth.instance.verifyPhoneNumber(
//       phoneNumber: phoneNumber,
//       verificationCompleted: (PhoneAuthCredential credential) async {
//         await FirebaseAuth.instance.signInWithCredential(credential);
//       },
//       verificationFailed: (FirebaseAuthException e) {
//         if (e.code == 'invalid-phone-number')
//           Utils.flushBarErrorMessage(
//               context: context,
//               message: 'The provided phone number is not valid.');
//       },
//       codeSent: (String verificationId, int? resendToken) async {
//         Navigator.push(context!, MaterialPageRoute(builder: (context)=>OtpScreen(getPhoneNumber: phoneNumber!,)));
//         // Update the UI - wait for the user to enter the SMS code
//        String smsCode = otpCode!;
//
//         // Create a PhoneAuthCredential with the code
//         PhoneAuthCredential credential = PhoneAuthProvider.credential(
//             verificationId: verificationId, smsCode: smsCode);
//         print('#####################$otpCode##################');
//
//         // Sign the user in (or link) with the credential
//         await FirebaseAuth.instance.signInWithCredential(credential);
//      Navigator.pushNamed(context, HomeScreen.routeName);
//
//       },
//       codeAutoRetrievalTimeout: (String verificationId) {
//         Utils.flushBarErrorMessage(
//             context: context, message: 'Auto-resolution timed out...');
//       },
//     );
//   }
//
//  await FirebaseFirestore.instance
//       .collection('users')
//       .doc()
//       .set({
//     'name' : "$firstName $lastName",
//     'phoneNumber' : phoneNumber,
//     'address' : address
//       });
// }

 static signIn({String? email, String? password, BuildContext? context,bool? remember}) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email!, password: password!);
      var uid = FirebaseAuth.instance.currentUser!.uid;
      await FirebaseFirestore.instance.collection('users').doc(uid).update({
        'rememberMe':remember,
      });
      Navigator.pushNamed(context!, LoginSuccessScreen.routeName);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Utils.flushBarErrorMessage(context: context, message: 'No user Found');
      } else if (e.code == 'wrong-password') {
        Utils.flushBarErrorMessage(context: context, message: 'Wrong Password');
      }
    } catch (e) {}
  }

  verificationCompleted(PhoneAuthCredential credential) async {
    await FirebaseAuth.instance.signInWithCredential(credential);
  }
}