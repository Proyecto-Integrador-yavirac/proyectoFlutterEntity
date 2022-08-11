import 'package:flutter/material.dart';
import 'package:grupo_3_b/themes/theme.dart';

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
        padding: const EdgeInsets.all(5),
        child: TextFormField(
          style: TextStyle(color: Colors.white),
          keyboardType: keyboardType,
          obscureText: obscureText,
          initialValue: formValues[formProperty].toString(),
          textCapitalization: TextCapitalization.words,
          onChanged: (value) => formValues[formProperty] = value,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
            focusedBorder:OutlineInputBorder(
            borderSide: const BorderSide(color: Color.fromARGB(255, 59, 209, 255), width: 2.0),
            borderRadius: BorderRadius.circular(19.0),
          ),
            
            hintText: '$hintText',
            hintStyle: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            labelStyle: const TextStyle(color:Colors.white ),
            helperStyle:const TextStyle(color: Color.fromARGB(255, 59, 209, 255)),
            labelText: '$labelText',
            helperText: '$helperText',
            suffixIcon: suffixIcon,
            filled: true,
            fillColor: AppTheme.primary,
          ),
        ));
  }
}
