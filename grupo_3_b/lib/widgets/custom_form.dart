import 'package:flutter/material.dart';
import 'package:grupo_3_b/widgets/input_date_picker.dart';
import 'package:grupo_3_b/widgets/widgets.dart';

import '../themes/theme.dart';

class CustomForm extends StatelessWidget {
  final GlobalKey<FormState> empresaKey;
  final Map<String, dynamic> empresaValues;
  final void Function()? onChanged;

  const CustomForm(
      {Key? key,
      required this.empresaKey,
      required this.empresaValues,
      this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: empresaKey,
      child: Column(
        children: [
          CustomInputField(
            formProperty: 'nombre',
            formValues: empresaValues,
            hintText: 'Escriba su nombre:',
            labelText: 'Nombre',
            helperText: 'El nombre debe ser de mas de 3 letras',
            suffixIcon: const Icon(
              Icons.supervisor_account,
              color: AppTheme.primary,
            ),
            icon: const Icon(
              Icons.supervised_user_circle_rounded,
              color: AppTheme.primary,
            ),
            keyboardType: TextInputType.text,
            obscureText: false,
          ),
          CustomInputField(
            formProperty: 'telefono',
            formValues: empresaValues,
            hintText: 'Escriba su telefono:',
            labelText: 'Telefono',
            helperText: 'ingrese al menos 9 numeros',
            suffixIcon: const Icon(
              Icons.travel_explore_sharp,
              color: Color.fromARGB(255, 2, 74, 3),
            ),
            icon: const Icon(
              Icons.supervised_user_circle_rounded,
              color: Color.fromARGB(255, 2, 74, 13),
            ),
            keyboardType: TextInputType.text,
            obscureText: false,
          ),
          CustomInputField(
            formProperty: 'descripcion',
            formValues: empresaValues,
            hintText: 'Descripcion:',
            labelText: 'Descripcion',
            helperText: 'Breve detalle a que se dedica la empresa ',
            suffixIcon: const Icon(
              Icons.supervisor_account,
              color: Color.fromARGB(255, 4, 93, 16),
            ),
            icon: const Icon(
              Icons.supervised_user_circle_rounded,
              color: Color.fromARGB(255, 15, 74, 2),
            ),
            keyboardType: TextInputType.text,
            obscureText: false,
          ),
          CustomInputField(
            formProperty: 'email',
            formValues: empresaValues,
            hintText: 'Escriba su email:',
            labelText: 'Email',
            helperText: 'Ingrese @',
            suffixIcon: const Icon(
              Icons.supervisor_account,
              color: AppTheme.primary,
            ),
            icon: const Icon(
              Icons.supervised_user_circle_rounded,
              color: AppTheme.primary,
            ),
            keyboardType: TextInputType.text,
            obscureText: false,
          ),
          CustomInputField(
            formProperty: 'ruc',
            formValues: empresaValues,
            hintText: 'Escriba su ruc:',
            labelText: 'Ruc',
            helperText: 'solo rucs validos',
            suffixIcon: const Icon(
              Icons.supervisor_account,
              color: AppTheme.primary,
            ),
            icon: const Icon(
              Icons.supervised_user_circle_rounded,
              color: AppTheme.primary,
            ),
            keyboardType: TextInputType.text,
            obscureText: false,
          ),
          InputDatePickerField(
            formProperty: 'fechaCreacion',
            formValues: empresaValues,
          ),
          CheckboxToggle(formValues: empresaValues, formProperty: 'estado'),
          ElevatedButton.icon(
            onPressed: onChanged,
            icon: const Icon(Icons.save),
            label: const Text('Guardar'),
          )
        ],
      ),
    );
  }
}
