import 'package:flutter/material.dart';
import 'package:simulador_examen/configs/colors.dart';
import 'package:simulador_examen/home/models/option_model.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    super.key,
    required this.text,
    this.listOptions,
  });

  final String text;
  final List<OptionModel>? listOptions;

  @override
  Widget build(BuildContext context) {
    List<OptionModel> opciones = [
      OptionModel(text, () {}, 1),
    ];
    opciones.addAll(listOptions ?? []);
    String seleccionado = text;
    return Container(
      width: 200,
      height: 35,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 73, 74, 75),
        borderRadius: BorderRadius.circular(10.0),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: seleccionado,
          onChanged: (String? newValue) {
            if (newValue != null) {
              seleccionado = newValue;
            }
          },
          onTap: () {
            // Aquí puedes realizar alguna acción cuando se toque el botón
          },
          elevation: 0,
          dropdownColor: const Color.fromARGB(255, 73, 74, 75),
          selectedItemBuilder: (BuildContext context) {
            return opciones.map<Widget>((OptionModel item) {
              return Row(
                children: [
                  Text(
                    item.nombre,
                    style: const TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ],
              );
            }).toList();
          },
          items: opciones.map<DropdownMenuItem<String>>((OptionModel value) {
            return DropdownMenuItem<String>(
              alignment: AlignmentDirectional.center,
              enabled: true,
              value: value.nombre,
              child: Container(
                color: value.nombre == text
                    ? Color(0xFF4472C4)
                    : value.index % 2 == 1
                        ? Color(0xFFE9EBF5)
                        : Color(0xFFCFD5EA),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 2,
                      color: value.nombre == text ? Colors.transparent : Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            value.nombre,
                            style: TextStyle(color: Colors.black, fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 2,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );

    /*ElevatedButton(
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
    );*/
  }
}
