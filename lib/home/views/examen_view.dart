import 'package:flutter/material.dart';
import 'package:simulador_examen/configs/colors.dart';
import 'package:simulador_examen/home/widget/custom_buton_widget.dart';
import 'package:simulador_examen/home/widget/form_blue_widget.dart';
import 'package:simulador_examen/home/widget/verticar_buton_widget.dart';

class ExamenView extends StatelessWidget {
  ExamenView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsetsDirectional.all(10),
          color: colors.grey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text('INFORMACION DEL PACIENTE'),
              Text('SELECCIÓN DE PROTOCOLO'),
            ],
          ),
        ),
        Container(
          color: colors.blue,
          height: 4,
        ),
        Row(
          children: [
            const Expanded(
              flex: 1,
              child: FormBlueWidget(),
            ),
            Expanded(
              flex: 1,
              child: SizedBox(
                height: 450,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Center(
                      child: VerticalButonWidget(),
                    ),
                    Image.network(
                      'https://m.media-amazon.com/images/I/612j3NTk6+L._AC_SX466_.jpg',
                      width: 200,
                      height: 420,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      width: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          CustomButtonWidget(text: 'CRANEO'),
                          CustomButtonWidget(text: 'VICEOCRANEO'),
                          CustomButtonWidget(text: 'CUELLO-COL CERVI'),
                          CustomButtonWidget(text: 'TORAX-COL DORS'),
                          CustomButtonWidget(text: 'EXTREMIDAD SUP'),
                          CustomButtonWidget(text: 'ABDOMEN'),
                          CustomButtonWidget(text: 'PELVIS'),
                          CustomButtonWidget(text: 'EXTREMIDAD INF'),
                          CustomButtonWidget(text: 'INTERVENCIONISM'),
                          CustomButtonWidget(text: 'TRAUMA'),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
