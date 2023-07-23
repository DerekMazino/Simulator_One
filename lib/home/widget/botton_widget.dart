import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ElevatedButton(
          onPressed: () {
            // Acción a realizar cuando se presiona el botón
            print('Botón con bordes redondos presionado');
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF457ABF),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          child: Text(text),
        ),
      ),
    );
  }
}
