import 'package:flutter/material.dart';
import 'package:simulador_examen/configs/colors.dart';
import 'package:simulador_examen/home/widget/const_item_widget.dart';
import 'package:simulador_examen/home/widget/textfield_item_widget.dart';

class FormBlueWidget extends StatelessWidget {
  const FormBlueWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: colors.lightblue,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: const [
            ConstItemWidget(),
            TextfieldItemWidget(textItem: 'N° de identificacion'),
            TextfieldItemWidget(textItem: 'Nombre del paciente'),
            TextfieldItemWidget(textItem: 'Sexo'),
            TextfieldItemWidget(textItem: 'Fecha de nacimiento'),
            TextfieldItemWidget(textItem: 'Edad'),
            TextfieldItemWidget(textItem: 'Peso'),
            TextfieldItemWidget(textItem: 'Radiologo'),
            TextfieldItemWidget(textItem: 'Operador'),
            TextfieldItemWidget(textItem: 'Examen'),
            TextfieldItemWidget(textItem: 'Historia'),
          ],
        ),
      ),
    );
  }
}
