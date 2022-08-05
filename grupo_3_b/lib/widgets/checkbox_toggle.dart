import 'package:flutter/material.dart';

class CheckboxToggle extends StatelessWidget{
  final bool value;
  const CheckboxToggle({Key? key, required this.value}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    
    return Switch(
      value: value, 
      onChanged: (value)=> this.value ,
      //onChanged: (value)=> setState(()=>this.value=value!),
      
      );
  }
  
}