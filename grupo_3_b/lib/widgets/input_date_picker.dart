import 'package:flutter/material.dart';

class InputDatePickerField extends StatefulWidget {
  final Map<String, dynamic> formValues;
  final String formProperty;
  const InputDatePickerField(
      {Key? key, required this.formValues, required this.formProperty})
      : super(key: key);

  @override
  State<InputDatePickerField> createState() => _InputDatePickerFieldState();
}

class _InputDatePickerFieldState extends State<InputDatePickerField> {
  @override
  Widget build(BuildContext context) {
    return InputDatePickerFormField(
        firstDate: DateTime(1900),
        lastDate: DateTime(3020, 12, 12),
        initialDate: widget.formValues[widget.formProperty],
        onDateSubmitted: (date) {
          setState(() {
            widget.formValues[widget.formProperty] = '$date';
          });
        });
  }
}
