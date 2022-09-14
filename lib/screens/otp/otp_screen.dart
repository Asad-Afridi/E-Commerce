import 'package:flutter/material.dart';
import 'package:e_commerce_app/screens/otp/components/body.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({required this.getPhoneNumber}) ;
  static String routeName = '/otp_screen';
  final String getPhoneNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'OTP Verification',
          style: TextStyle(
            color: Color(0xFF8B8B8B),
            fontSize: 18,
          ),
        ),
      ),
      body: Body(phoneNumber: getPhoneNumber,),
    );
  }
}
