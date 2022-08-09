import 'package:flutter/material.dart';

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
      value: isSwitched,
      onChanged: (value) {
        setState(() {
          isSwitched = value;
          print(isSwitched);
        });
      },
      activeTrackColor: Colors.lightGreenAccent,
      activeColor: Colors.green,
    );
  }
}
