import 'package:flutter/material.dart';
import 'package:grupo_3_b/widgets/widgets.dart';
import 'package:intl/intl.dart';

class InputDatePickerField extends StatefulWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final Widget? suffixIcon;
  final Widget? icon;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Map<String, dynamic> formValues;
  final String formProperty;
  const InputDatePickerField(
      {Key? key,
      required this.formValues,
      required this.formProperty,
      this.hintText,
      this.labelText,
      this.helperText,
      this.suffixIcon,
      this.icon,
      this.keyboardType,
      required this.obscureText})
      : super(key: key);

  @override
  State<InputDatePickerField> createState() => _InputDatePickerFieldState();
}

class _InputDatePickerFieldState extends State<InputDatePickerField> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomInputField(
          formProperty: widget.formProperty,
          formValues: widget.formValues,
          hintText: widget.hintText,
          labelText: widget.labelText,
          helperText: widget.helperText,
          suffixIcon: widget.suffixIcon,
          icon: widget.icon,
          keyboardType: widget.keyboardType,
          obscureText: widget.obscureText,
        ),
        TextButton(
            child: const Text('Calendar'),
            onPressed: () async {
              final date = await showDatePicker(
                  initialEntryMode: DatePickerEntryMode.input,
                  context: context,
                  initialDate:
                      DateTime.parse(widget.formValues[widget.formProperty]),
                  firstDate: DateTime(1900),
                  lastDate: DateTime.now());
              widget.formValues[widget.formProperty] = DateFormat('yyyy-MM-dd')
                  .format(date ?? DateTime.now())
                  .toString();
            })
      ],
    );
  }
}
