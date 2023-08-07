import 'package:flutter/material.dart';
import 'package:simulador_examen/configs/colors.dart';

class VerticalButonWidget extends StatelessWidget {
  const VerticalButonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: colors.blue,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
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
    );
  }
}
