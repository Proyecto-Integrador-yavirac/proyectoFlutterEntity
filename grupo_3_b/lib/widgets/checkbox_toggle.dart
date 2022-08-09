import 'package:flutter/material.dart';

class CheckboxToggle extends StatelessWidget {
  final Map<String, dynamic> formValues;
  final String formProperty;

  const CheckboxToggle(
      {Key? key, required this.formValues, required this.formProperty})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: formValues[formProperty],
      onChanged: (value) => formValues[formProperty] = value,
    );
  }
}
