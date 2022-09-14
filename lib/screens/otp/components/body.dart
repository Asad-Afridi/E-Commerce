import 'package:e_commerce_app/constant.dart';
import 'package:e_commerce_app/screens/otp/components/otp_form.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  Body({required this.phoneNumber});

  final String phoneNumber;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateWidth(20,context)),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.05,
            ),
            Text(
              'OTP Verification',
              style: headingStyle,
            ),
            Text("We sent your code to ${widget.phoneNumber}"),
            buildTimer(),
            SizedBox(
              height: height * 0.15,
            ),
            OtpForm(phoneNumber: widget.phoneNumber,),
            SizedBox(
              height: height * 0.1,
            ),
            GestureDetector(
              onTap: (){},
              child: Text(
                'Resend OTP Code',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('This code will be expire in '),
        TweenAnimationBuilder(
          tween: IntTween(begin: 30, end: 0),
          duration: Duration(seconds: 30),
          builder: (context, value, child) => Text(
            '00.$value',
            style: TextStyle(color: kPrimaryColor),
          ),
          onEnd: () {},
        ),
      ],
    );
  }
}

