import 'package:flutter/material.dart';
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
    return Padding(
        padding: const EdgeInsets.all(40),
        child: Form(
            key: empresaKey,
            child: Column(
              children: <Widget>[
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
                CustomInputField(
                  formProperty: 'nombre',
                  formValues: empresaValues,
                  hintText: 'Escriba su nombre:',
                  labelText: 'Nombre',
                  helperText: 'El nombre debe ser de mas de 3 letras',
                  suffixIcon: const Icon(
                    Icons.person,
                    color: AppTheme.primary,
                  ),
                  icon: const Icon(
                    Icons.person,
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
                CustomInputField(
                  formProperty: 'telefono',
                  formValues: empresaValues,
                  hintText: 'Escriba su telefono:',
                  labelText: 'Telefono',
                  helperText: 'ingrese al menos 9 numeros',
                  suffixIcon: const Icon(
                    Icons.phone,
                    color: Color.fromARGB(255, 2, 74, 3),
                  ),
                  icon: const Icon(
                    Icons.phone,
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
                    Icons.description,
                    color: Color.fromARGB(255, 4, 93, 16),
                  ),
                  icon: const Icon(
                    Icons.description,
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
                    Icons.mail,
                    color: AppTheme.primary,
                  ),
                  icon: const Icon(
                    Icons.mail,
                    color: AppTheme.primary,
                  ),
                  keyboardType: TextInputType.text,
                  obscureText: false,
                ),
                CustomInputField(
                  formProperty: 'fechaCreacion',
                  formValues: empresaValues,
                  hintText: 'YYYY-MM-DD',
                  labelText: 'Fecha Creacion',
                  helperText: 'Ingrese una fecha valida(YYYY-MM-DD)',
                  suffixIcon: const Icon(
                    Icons.calendar_month,
                    color: AppTheme.primary,
                  ),
                  icon: const Icon(
                    Icons.calendar_month,
                    color: AppTheme.primary,
                  ),
                  keyboardType: TextInputType.text,
                  obscureText: false,
                ),
                CustomInputField(
                  formProperty: 'numeroEmpleados',
                  formValues: empresaValues,
                  hintText: 'Ingrese el numeros de empleados de su empresa',
                  labelText: 'Numeros de Empleados',
                  helperText: 'Solo numeros',
                  suffixIcon: const Icon(
                    Icons.supervisor_account,
                    color: AppTheme.primary,
                  ),
                  icon: const Icon(
                    Icons.supervised_user_circle_rounded,
                    color: AppTheme.primary,
                  ),
                  keyboardType: TextInputType.number,
                  obscureText: false,
                ),
                CustomInputField(
                  formProperty: 'direccion',
                  formValues: empresaValues,
                  hintText: 'Ingrese la direccion de la empresa',
                  labelText: 'Direccion',
                  helperText: 'Ingrese una direccion',
                  suffixIcon: const Icon(
                    Icons.directions_run,
                    color: AppTheme.primary,
                  ),
                  icon: const Icon(
                    Icons.directions_run,
                    color: AppTheme.primary,
                  ),
                  keyboardType: TextInputType.text,
                  obscureText: false,
                ),
                Container(
                  child: Row(
                    children: [
                      const Icon(
                        Icons.factory_outlined,
                        color: AppTheme.primary,
                      ),
                      const Text("Activo"),
                      CheckboxToggle(
                          formValues: empresaValues, formProperty: 'estado')
                    ],
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: onChanged,
                  icon: const Icon(Icons.save),
                  label: const Text('Guardar'),
                )
              ],
            )));
  }
}
