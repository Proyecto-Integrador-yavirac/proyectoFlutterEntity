import 'package:flutter/material.dart';
import 'package:grupo_3_b/widgets/checkbox_toggle.dart';
import 'package:grupo_3_b/widgets/custom_input_field.dart';
import 'package:provider/provider.dart';

import '../providers/providers.dart';
import '../themes/theme.dart';

class EmpresaForm extends StatelessWidget {
  const EmpresaForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> empresaKey = GlobalKey<FormState>();
    final empresaProvider = Provider.of<EmpresaProvider>(context);

    final Map<String, dynamic> empresaValues = {
      'ruc': '',
      'nombre': '',
      'estado': true,
      'telefono': '',
      'descripcion': '',
      'email': '',
      'numeroEmpleados': 0
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulario'),
      ),
      body: SingleChildScrollView(
          child: Form(
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
              formProperty: 'descripcion',
              formValues: empresaValues,
              hintText: 'Descripcion:',
              labelText: 'Descripcion',
              helperText: 'Breve detalle a que se dedica la empresa ',
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
            const CheckboxToggle(value: false),
            ElevatedButton.icon(
              onPressed: () {
                empresaProvider.createUser(empresaValues);
              },
              icon: const Icon(Icons.save),
              label: const Text('Guardar'),
            )
          ],
        ),
      )),
    );
  }
}
