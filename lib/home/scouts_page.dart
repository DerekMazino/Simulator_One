import 'package:flutter/material.dart';
import 'package:simulador_examen/configs/colors.dart';
import 'package:simulador_examen/home/widget/bottom_menu_widget.dart';
import 'package:simulador_examen/home/widget/custom_buton_widget.dart';
import 'package:simulador_examen/home/widget/form_blue_widget.dart';
import 'package:simulador_examen/home/widget/verticar_buton_widget.dart';

class ScoutsPage extends StatefulWidget {
  const ScoutsPage({super.key});

  @override
  State<ScoutsPage> createState() => _ScoutsPageState();
}

class _ScoutsPageState extends State<ScoutsPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
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
