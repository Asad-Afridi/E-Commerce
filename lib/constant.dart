import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';

const kPrimaryColor=Color(0xFFFF7643);
const kPrimaryLightColor=Color(0xFFFFECDF);
const kPrimaryGadientColor=LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor=Color(0xFF979797);
const kTextColor=Color(0xFF757575);

const kAminmationDuration= Duration(milliseconds: 200);

final headingStyle = TextStyle(
    color: Colors.black,
    fontSize: 28,
    fontWeight: FontWeight.bold,
    height: 1.5
);

/// Form Errors


final RegExp emailValidatorRegExp =
RegExp('@');
const String kEmailNullError = 'Please enter your email';
const String kInvalidEmailError = 'Please enter a valid email';
const String kPasswordNullError = 'Please enter your password';
const String kShortPasswordError = 'Password is too short';
const String kMatchPasswordError = "Password don't match";
const String kNameNullError ='Please enter your name';
const String kPhoneNumberNullError ='Please enter your phone number';
const String kAddressNullError ='Please enter your address';

final otpInputDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 20,),
  enabledBorder: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  border: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: BorderSide(color: kTextColor)
);
}