
import 'package:e_commerce_app/services/auth/auth_functions.dart';
import 'package:e_commerce_app/utils/utils.dart';
import 'package:flutter/material.dart';

import '../../../components/custom_suffix_icon.dart';
import '../../../components/default_button.dart';
import '../../../constant.dart';
import '../../../size_config.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  bool isObscure = true;
  String? email;
  String? password;
  String? conform_password;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(
            height: getProportionateHeight(30,context),
          ),
          buildPasswordFormField(),
          SizedBox(
            height: getProportionateHeight(50,context),
          ),
          DefaultButton(
              press: () {

                  AuthServices.signUp(email,password,context);

              },
              text: 'Continue')
        ],
      ),
    );
  }

  // TextFormField buildConPasswordFormField() {
  //   return TextFormField(
  //     onSaved: (newValue) => conform_password = newValue,
  //     validator: (value) {
  //       if (value!.isEmpty) {
  //         return "";
  //       }
  //       else if(value != password){
  //         print('error///////');
  //         return "";
  //       }
  //       return null;
  //     },
  //     obscureText: isObscure,
  //     decoration: InputDecoration(
  //         labelText: 'Confirm Password',
  //         hintText: 'Re-Enter your password',
  //         floatingLabelBehavior: FloatingLabelBehavior.always,
  //         suffixIcon: CustomSuffixIcon(
  //           press: () {
  //             setState(() {
  //               isObscure = !isObscure;
  //             });
  //           },
  //           icon: isObscure ? Icons.visibility_off : Icons.visibility,
  //         )),
  //   );
  // }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      onChanged: (newValue) => password = newValue,
      validator: (value) {
        if (value!.isEmpty) {
          Utils.flushBarErrorMessage(
              context: context, message: kPasswordNullError);
          return "";
        } else if (value.length < 8 && value.length > 0) {
          Utils.flushBarErrorMessage(
              context: context, message: kShortPasswordError);
          return "";
        }
        return null;
      },
      obscureText: isObscure,
      decoration: InputDecoration(
          labelText: 'Password',
          hintText: 'Enter your password',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(
            press: () {
              setState(() {
                isObscure = !isObscure;
              });
            },
            icon: isObscure ? Icons.visibility_off : Icons.visibility,
          )),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      onChanged: (newValue) => email = newValue,
      validator: (value) {
        if (value!.isEmpty) {
          Utils.flushBarErrorMessage(
              context: context, message: kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          Utils.flushBarErrorMessage(
              context: context, message: kInvalidEmailError);
          return "";
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          labelText: 'Email',
          hintText: 'Enter your email',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(
            press: () {},
            icon: Icons.mail_outline,
          )),
    );
  }
}
