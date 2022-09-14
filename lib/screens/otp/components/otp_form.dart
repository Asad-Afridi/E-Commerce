import 'package:e_commerce_app/services/auth/auth_functions.dart';
import 'package:flutter/material.dart';

import '../../../components/default_button.dart';
import '../../../constant.dart';
import '../../../size_config.dart';

class OtpForm extends StatefulWidget {
  const OtpForm({Key? key, required this.phoneNumber}) : super(key: key);
final String phoneNumber;
  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  FocusNode? pin2FocusNode;
  FocusNode? pin3FocusNode;
  FocusNode? pin4FocusNode;
  FocusNode? pin5FocusNode;
  FocusNode? pin6FocusNode;
  var digit1 = TextEditingController();
  var digit2 = TextEditingController();
  var digit3 = TextEditingController();
  var digit4 = TextEditingController();
  var digit5 = TextEditingController();
  var digit6 = TextEditingController();

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
    pin5FocusNode = FocusNode();
    pin6FocusNode = FocusNode();
  }

  @override
  void dispose() {
    pin2FocusNode!.dispose();
    pin3FocusNode!.dispose();
    pin4FocusNode!.dispose();
    pin5FocusNode!.dispose();
    pin6FocusNode!.dispose();
    super.dispose();
  }

  void nextField({String? value, FocusNode? focusNode}) {
    if (value!.length == 1) {
      focusNode!.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Form(
      child: Column(
        children: [
          SizedBox(
            height: getProportionateHeight(70, context),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: getProportionateWidth(50, context),
                  child: TextFormField(
                    controller: digit1,
                    autofocus: true,
                    obscureText: true,
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontSize: 15),
                    decoration: otpInputDecoration,
                    textAlign: TextAlign.center,
                    onChanged: (value) {
                      nextField(value: value, focusNode: pin2FocusNode);
                    },
                  ),
                ),
                SizedBox(
                  width: getProportionateWidth(50, context),
                  child: TextFormField(
                    controller: digit2,
                    focusNode: pin2FocusNode,
                    obscureText: true,
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontSize: 15),
                    decoration: otpInputDecoration,
                    textAlign: TextAlign.center,
                    onChanged: (value) {
                      nextField(value: value, focusNode: pin3FocusNode);
                    },
                  ),
                ),
                SizedBox(
                  width: getProportionateWidth(50, context),
                  child: TextFormField(
                    controller: digit3,
                    focusNode: pin3FocusNode,
                    obscureText: true,
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontSize: 15),
                    decoration: otpInputDecoration,
                    textAlign: TextAlign.center,
                    onChanged: (value) {
                      nextField(value: value, focusNode: pin4FocusNode);
                    },
                  ),
                ),
                SizedBox(
                  width: getProportionateWidth(50, context),
                  child: TextFormField(
                    controller: digit4,
                    focusNode: pin4FocusNode,
                    obscureText: true,
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontSize: 15),
                    decoration: otpInputDecoration,
                    textAlign: TextAlign.center,
                    onChanged: (value) {
                      nextField(value: value, focusNode: pin5FocusNode);
                    },
                  ),
                ),
                SizedBox(
                  width: getProportionateWidth(50, context),
                  child: TextFormField(
                    controller: digit5,
                    focusNode: pin5FocusNode,
                    obscureText: true,
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontSize: 15),
                    decoration: otpInputDecoration,
                    textAlign: TextAlign.center,
                    onChanged: (value) {
                      nextField(value: value, focusNode: pin6FocusNode);
                    },
                  ),
                ),
                SizedBox(
                  width: getProportionateWidth(50, context),
                  child: TextFormField(
                    controller: digit6,
                    focusNode: pin6FocusNode,
                    obscureText: true,
                    keyboardType: TextInputType.number,
                    style: TextStyle(fontSize: 15),
                    decoration: otpInputDecoration,
                    textAlign: TextAlign.center,
                    onChanged: (value) {
                      pin6FocusNode!.unfocus();
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.15,
          ),
          DefaultButton(
              press: () {
                String otp =
                    "${digit1.text.toString()}${digit2.text.toString()}${digit3.text.toString()}${digit4.text.toString()}${digit5.text.toString()}${digit6.text.toString()}";
              },
              text: 'Continue')
        ],
      ),
    );
  }
}
