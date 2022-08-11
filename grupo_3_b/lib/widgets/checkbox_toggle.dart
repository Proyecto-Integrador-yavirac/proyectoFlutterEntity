import 'package:flutter/material.dart';
import 'package:grupo_3_b/themes/theme.dart';

class CheckboxToggle extends StatefulWidget {
  final Map<String, dynamic> formValues;
  final String formProperty;

  const CheckboxToggle(
      {Key? key, required this.formValues, required this.formProperty})
      : super(key: key);

  @override
  State<CheckboxToggle> createState() => _CheckboxToggleState();
}

class _CheckboxToggleState extends State<CheckboxToggle> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: widget.formValues[widget.formProperty],
      onChanged: (value) {
        setState(() {
          widget.formValues[widget.formProperty] = value;
        });
      },
      activeTrackColor: Color.fromARGB(255, 20, 97, 184),
      activeColor: Color.fromARGB(255, 6, 50, 100),
    );
  }
}
