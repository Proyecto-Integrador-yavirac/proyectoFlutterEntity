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
    return TextButton(
        child: const Text('Calendar'),
        onPressed: () async {
          final date = await showDatePicker(
              initialEntryMode: DatePickerEntryMode.input,
              context: context,
              initialDate:
                  DateTime.parse(widget.formValues[widget.formProperty]),
              firstDate: DateTime(1900),
              lastDate: DateTime.now());
          widget.formValues[widget.formProperty] = date.toString();
        });
  }
}
