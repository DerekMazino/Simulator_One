import 'package:flutter/material.dart';
import 'package:simulador_examen/configs/colors.dart';
import 'package:simulador_examen/home/models/option_model.dart';
import 'package:simulador_examen/home/widget/bottom_menu_widget.dart';
import 'package:simulador_examen/home/widget/custom_buton_widget.dart';
import 'package:simulador_examen/home/widget/form_blue_widget.dart';
import 'package:simulador_examen/home/widget/verticar_buton_widget.dart';

class SelectViewPage extends StatefulWidget {
  SelectViewPage({super.key});

  @override
  State<SelectViewPage> createState() => _SelectViewPageState();
}

class _SelectViewPageState extends State<SelectViewPage> {
  int _selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.grey,
      body: SingleChildScrollView(
        child: SizedBox(
          child: Column(
            children: [
              Column(
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
                                  children: [
                                    CustomButtonWidget(
                                      text: 'CRANEO',
                                      listOptions: [
                                        OptionModel('SIMPLE', () => onItemTapped(2), 1),
                                        OptionModel('CONTRASTADO', () => onItemTapped(2), 2),
                                        OptionModel('ANGIO CEREBRAL', () => onItemTapped(2), 3),
                                        OptionModel('PROTOCOLO ACV', () => onItemTapped(2), 4),
                                      ],
                                    ),
                                    CustomButtonWidget(
                                      text: 'VICEOCRANEO',
                                      listOptions: [
                                        OptionModel('ORBITAS', () => onItemTapped(2), 1),
                                        OptionModel('SPN', () => onItemTapped(2), 2),
                                        OptionModel('CARA', () => onItemTapped(2), 3),
                                        OptionModel('OIDOS', () => onItemTapped(2), 4),
                                        OptionModel('ATM', () => onItemTapped(2), 4),
                                      ],
                                    ),
                                    CustomButtonWidget(
                                      text: 'CUELLO-COL CERVI',
                                      listOptions: [
                                        OptionModel('SIMPLE', () => onItemTapped(2), 1),
                                        OptionModel('CONTRASTADO', () => onItemTapped(2), 2),
                                        OptionModel('ANGIO CAROTIDAS', () => onItemTapped(2), 3),
                                        OptionModel('PROTOCOLO ACV', () => onItemTapped(2), 4),
                                        OptionModel('LARINGE', () => onItemTapped(2), 4),
                                      ],
                                    ),
                                    CustomButtonWidget(
                                      text: 'TORAX-COL DORS',
                                      listOptions: [
                                        OptionModel('SIMPLE', () => onItemTapped(2), 1),
                                        OptionModel('CONTRASTADO', () => onItemTapped(2), 2),
                                        OptionModel('TOCAR', () => onItemTapped(2), 3),
                                        OptionModel('ANGIO TEP', () => onItemTapped(2), 4),
                                        OptionModel('ANGIO AORTA TOR.', () => onItemTapped(2), 4),
                                      ],
                                    ),
                                    CustomButtonWidget(
                                      text: 'EXTREMIDAD SUP',
                                      listOptions: [
                                        OptionModel('HOMBRO', () => onItemTapped(2), 1),
                                        OptionModel('BRAZO', () => onItemTapped(2), 2),
                                        OptionModel('CODO', () => onItemTapped(2), 3),
                                        OptionModel('PUÑO', () => onItemTapped(2), 4),
                                        OptionModel('MANO', () => onItemTapped(2), 4),
                                        OptionModel('ANGIO DE MMSS', () => onItemTapped(2), 4),
                                      ],
                                    ),
                                    CustomButtonWidget(
                                      text: 'ABDOMEN',
                                      listOptions: [
                                        OptionModel('ABDOMEN RUTINA', () => onItemTapped(2), 1),
                                        OptionModel('DINAM HIGADO', () => onItemTapped(2), 2),
                                        OptionModel('DINAM RIÑON', () => onItemTapped(2), 3),
                                        OptionModel('UROGRAFIA POR TC', () => onItemTapped(2), 4),
                                        OptionModel('UROTAC', () => onItemTapped(2), 4),
                                        OptionModel('DINAM SUPRARENALES', () => onItemTapped(2), 4),
                                        OptionModel('ANGIOTOMAGRAF SUPRARENALES', () => onItemTapped(2), 4),
                                      ],
                                    ),
                                    CustomButtonWidget(
                                      text: 'PELVIS',
                                      listOptions: [
                                        OptionModel('ABDOMEN RUTINA', () => onItemTapped(2), 1),
                                        OptionModel('DINAM HIGADO', () => onItemTapped(2), 2),
                                        OptionModel('DINAM RIÑON', () => onItemTapped(2), 3),
                                        OptionModel('UROGRAFIA POR TC', () => onItemTapped(2), 4),
                                        OptionModel('UROTAC', () => onItemTapped(2), 4),
                                        OptionModel('DINAM SUPRARENALES', () => onItemTapped(2), 4),
                                        OptionModel('ANGIOTOMAGRAF DE AORTA', () => onItemTapped(2), 4),
                                      ],
                                    ),
                                    CustomButtonWidget(
                                      text: 'EXTREMIDAD INF',
                                      listOptions: [
                                        OptionModel('FEMUR', () => onItemTapped(2), 1),
                                        OptionModel('RODILLA', () => onItemTapped(2), 2),
                                        OptionModel('ROTULAS', () => onItemTapped(2), 3),
                                        OptionModel('TOBILLO', () => onItemTapped(2), 4),
                                        OptionModel('PIE', () => onItemTapped(2), 4),
                                        OptionModel('ANGIO MMII', () => onItemTapped(2), 4),
                                      ],
                                    ),
                                    CustomButtonWidget(
                                      text: 'INTERVENCIONISM',
                                      listOptions: [
                                        OptionModel('CERVICAL', () => onItemTapped(2), 1),
                                        OptionModel('DORSAL', () => onItemTapped(2), 2),
                                        OptionModel('LUMBAR', () => onItemTapped(2), 3),
                                        OptionModel('SACROCOCCIS', () => onItemTapped(2), 4),
                                        OptionModel('ARTICULULACIONES SACROILICAS', () => onItemTapped(2), 4),
                                      ],
                                    ),
                                    CustomButtonWidget(
                                      text: 'TRAUMA',
                                      listOptions: [
                                        OptionModel('SET DE TRAUMA', () => onItemTapped(2), 1),
                                        OptionModel('CRANEO, CERVICAL, TORAX', () => onItemTapped(2), 2),
                                        OptionModel('CRANEO, CARA Y COL CERVICAL', () => onItemTapped(2), 3),
                                        OptionModel('PELVIS OSEA', () => onItemTapped(2), 4),
                                      ],
                                    ),
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
              ),
              Container(
                color: Colors.black,
                height: 4,
              ),
              const BottomMenuWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
