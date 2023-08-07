import 'package:flutter/material.dart';
import 'package:simulador_examen/configs/colors.dart';
import 'package:simulador_examen/home/widget/bottom_option_widget.dart';

class BottomMenuWidget extends StatelessWidget {
  const BottomMenuWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.all(10),
      color: colors.grey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const BottomOptionsWidget(text: 'Paciente nuevo'),
          const BottomOptionsWidget(text: 'Lista de pacientes'),
          const BottomOptionsWidget(text: 'Gestión de protocolo'),
          const BottomOptionsWidget(text: 'Pre. Diaria'),
          const BottomOptionsWidget(text: 'Función del equipo'),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: colors.blue,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('FINALIZAR'),
                  Text('ESTUDIO'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
