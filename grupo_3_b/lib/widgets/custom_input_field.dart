import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget{
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final Widget? suffixIcon;
  final Widget? icon;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String? Advert;
 

  const CustomInputField({ Key? key, 
  this.hintText,this.labelText,
  this.helperText,this.suffixIcon,
  this.icon, this.keyboardType,
  required this.obscureText, 
  this.Advert,
  }) 
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      obscureText: obscureText,
      // initialValue: 'Juan Perez',
      textCapitalization: TextCapitalization.words,
      
      autovalidateMode: AutovalidateMode.onUserInteraction,
      
      decoration:  InputDecoration(
        hintText: '$hintText',
        labelText: '$labelText',
        helperText: '$helperText',
        suffixIcon:  suffixIcon,
        icon: icon,
      ),
    );
  }

}