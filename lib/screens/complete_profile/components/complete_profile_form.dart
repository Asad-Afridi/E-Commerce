import 'package:e_commerce_app/screens/otp/otp_screen.dart';
import 'package:e_commerce_app/services/auth/auth_functions.dart';
import 'package:e_commerce_app/utils/utils.dart';
import 'package:flutter/material.dart';

import '../../../components/custom_suffix_icon.dart';
import '../../../components/default_button.dart';
import '../../../components/form_errors.dart';
import '../../../constant.dart';
import '../../../size_config.dart';

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({Key? key}) : super(key: key);

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {

  final _formKey = GlobalKey<FormState>();
  String? firstName;
  String? lastName;
  var phoneNumber= TextEditingController();
  String? address;
  TextEditingController _controller =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildFirstNameFormField(),
          SizedBox(height: getProportionateHeight(20,context),),
          buildLastNameFormField(),
          SizedBox(height: getProportionateHeight(20,context),),
          buildPhoneNumberFormField(),
          SizedBox(height: getProportionateHeight(20,context),),
          buildAddressFormField(),
          SizedBox(height: getProportionateHeight(20,context),),
          SizedBox(height: getProportionateHeight(30,context),),
          DefaultButton(press: (){

            AuthServices.signUp(null,null,context,firstName,lastName,phoneNumber.text.toString(),null,address);
            },
           text: 'Continue')
        ],
      ),
    );
  }

  TextFormField buildAddressFormField() {
    return TextFormField(
      onChanged: (newValue) => address = newValue,
      validator: (value) {
        if (value!.isEmpty) {
         Utils.flushBarErrorMessage(context: context,message: kAddressNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
          labelText: 'Address',
          hintText: 'Enter your address',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(
            press: (){},
            icon: Icons.location_city_outlined,
          )),
    );
  }

  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
      controller: phoneNumber,
      validator: (value) {
        if (value!.isEmpty) {
          Utils.flushBarErrorMessage(context: context,message: kPhoneNumberNullError);
          return "";
        }
        return null;
      },
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
          labelText: 'Phone Number',
          hintText: 'Enter your phone number',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(
            press: (){},
            icon: Icons.phone,
          )),
    );
  }

  TextFormField buildLastNameFormField() {
    return TextFormField(
      onChanged: (newValue) => lastName = newValue,
      validator: (value) {
        if (value!.isEmpty) {
          Utils.flushBarErrorMessage(context: context,message: kNameNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
          labelText: 'Last Name',
          hintText: 'Enter your last name',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(
            press: (){},
            icon: Icons.person_outline,
          )),
    );
  }

  TextFormField buildFirstNameFormField() {
    return TextFormField(
      onChanged: (newValue) => firstName = newValue,
      validator: (value) {
        if (value!.isEmpty) {
    Utils.flushBarErrorMessage(context: context,message: kNameNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
          labelText: 'First Name',
          hintText: 'Enter your first name',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(
            press: (){},
            icon: Icons.person_outline,
          )),
    );
  }
}