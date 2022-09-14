import 'package:flutter/material.dart';
import '../../../components/custom_suffix_icon.dart';
import '../../../components/default_button.dart';
import '../../../components/form_errors.dart';
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
  final  List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            onSaved: (newValue) => email = newValue,
            onChanged: (value) {
              if (value.isNotEmpty && errors.contains(kEmailNullError)) {
                setState(() {
                  errors.remove(kEmailNullError);
                });
              } else if (emailValidatorRegExp.hasMatch(value) &&
                  errors.contains(kInvalidEmailError)) {
                setState(
                      () {
                    errors.remove(kInvalidEmailError);
                  },
                );
              }
            },
            validator: (value) {
              if (value!.isEmpty && !errors.contains(kEmailNullError)) {
                setState((){
                  errors.add(kEmailNullError);
                });
                return "";
              } else if (!emailValidatorRegExp.hasMatch(value) &&
                  !errors.contains(kInvalidEmailError)) {
                setState(
                      () {
                    errors.add(kInvalidEmailError);
                  },
                );
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
          FormError(errors: errors),
          SizedBox(
            height: height * 0.1,
          ),
          DefaultButton(
              press: () {
                if (_formKey.currentState!.validate()) {

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