import 'package:e_commerce_app/services/auth/auth_functions.dart';
import 'package:e_commerce_app/utils/utils.dart';
import 'package:flutter/material.dart';
import '../../../components/custom_suffix_icon.dart';
import '../../../components/default_button.dart';
import '../../../components/no_account_text.dart';
import '../../../constant.dart';
import '../../../size_config.dart';

class ForgotPassForm extends StatefulWidget {
  const ForgotPassForm({Key? key}) : super(key: key);

  @override
  State<ForgotPassForm> createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  var _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _emailController,
            onChanged: (newValue) => email = newValue,
            validator: (value) {
              if (value!.isEmpty) {
                setState((){
                 Utils.flushBarErrorMessage(context: context,message: kEmailNullError);
                });
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
                press: (){},
                icon: Icons.mail_outline,
              ),
            ),
          ),
          SizedBox(
            height: getProportionateHeight(20,context),
          ),
          SizedBox(
            height: height * 0.1,
          ),
          DefaultButton(
              press: () {
                if (_formKey.currentState!.validate()) {
                  if (email!=null)
                    AuthServices.forgotPassword(email!,context);
                    _emailController.clear();
                }
                ;
              },
              text: 'Continue'),
          SizedBox(
            height: height * 0.1,
          ),
          NoAccountText(),
        ],
      ),
    );
  }
}