

import 'package:flutter/material.dart';

import '../size_config.dart';

class FormError extends StatelessWidget {
  FormError({required this.errors,
  }) ;
  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(errors.length, (index) => formErrorText(error: errors[index],context: context))
    );
  }

  Row formErrorText({String ?error,BuildContext? context}) {
    return Row(
      children: [
        Icon(
          Icons.error_outline,
          size: 16,
          color: Colors.red,
        ),
        SizedBox(width: getProportionateWidth(10,context!),),
        Text(error!),
      ],
    );
  }
}