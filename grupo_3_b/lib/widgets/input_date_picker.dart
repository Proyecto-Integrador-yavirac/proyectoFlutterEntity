import 'package:flutter/material.dart';

class InputDatePickerField extends StatelessWidget {
  final Map<String, dynamic> formValues;
  final String formProperty;

  const InputDatePickerField(
      {Key? key, required this.formValues, required this.formProperty})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InputDatePickerFormField(
      firstDate: DateTime(1900, 1, 1),
      lastDate: DateTime(3000, 1, 1),
      initialDate: formValues[formProperty],
      onDateSubmitted: (value) => formValues[formProperty] = value,
    );
  }
}
