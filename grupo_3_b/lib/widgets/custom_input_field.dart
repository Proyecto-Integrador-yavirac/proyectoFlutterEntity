import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final Widget? suffixIcon;
  final Widget? icon;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Map<String, dynamic> formValues;
  final String formProperty;

  const CustomInputField({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.suffixIcon,
    this.icon,
    this.keyboardType,
    required this.obscureText,
    required this.formValues,
    required this.formProperty,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: TextFormField(
          keyboardType: keyboardType,
          obscureText: obscureText,
          initialValue: formValues[formProperty].toString(),
          textCapitalization: TextCapitalization.words,
          onChanged: (value) => formValues[formProperty] = value,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
            hintText: '$hintText',
            labelText: '$labelText',
            helperText: '$helperText',
            suffixIcon: suffixIcon,
            icon: icon,
          ),
        ));
  }
}
