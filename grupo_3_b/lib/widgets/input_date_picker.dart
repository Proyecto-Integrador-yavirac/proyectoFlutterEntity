import 'package:flutter/material.dart';

class InputDatePickerField extends StatefulWidget {
  final Map<String, dynamic> formValues;
  final String formProperty;
  InputDatePickerField(
      {Key? key, required this.formValues, required this.formProperty})
      : super(key: key);

  @override
  State<InputDatePickerField> createState() => _InputDatePickerFieldState();
}

class _InputDatePickerFieldState extends State<InputDatePickerField> {
  @override
  Widget build(BuildContext context) {
    DateTime selectedDate = DateTime(2022, 12, 12);
    return InputDatePickerFormField(
        firstDate: DateTime(2019),
        lastDate: DateTime(2020, 12, 12),
        initialDate: selectedDate,
        onDateSubmitted: (date) {
          setState(() {
            selectedDate = date;
          });
        });
  }
}
