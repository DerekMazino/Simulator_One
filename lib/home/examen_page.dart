import 'package:flutter/material.dart';
import 'package:simulador_examen/configs/colors.dart';
import 'package:simulador_examen/home/widget/form_blue_widget.dart';

class ExamenPage extends StatefulWidget {
  const ExamenPage({super.key});

  @override
  State<ExamenPage> createState() => _ExamenPageState();
}

class _ExamenPageState extends State<ExamenPage> {
  int _counter = 0;
  int _selectedIndex = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

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
        child: Column(
          children: [
            Container(
              padding: EdgeInsetsDirectional.all(10),
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
                  child: Container(
                    height: 450,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Center(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: colors.blue,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('P'),
                                  Text('E'),
                                  Text('D'),
                                  Text('I'),
                                  Text('A'),
                                  Text('T'),
                                  Text('R'),
                                  Text('I'),
                                  Text('A'),
                                ],
                              ),
                            ),
                          ),
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
            Container(
              padding: EdgeInsetsDirectional.all(10),
              color: colors.grey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text('INFORMACION DEL PACIENTE'),
                  Text('SELECCIÓN DE PROTOCOLO'),
                ],
              ),
            ),
          ],
        ),
      ),

      //_pages[_selectedIndex],
    );
  }
}

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 73, 74, 75),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text),
          ],
        ),
      ),
    );
  }
}
