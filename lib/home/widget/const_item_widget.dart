import 'package:flutter/material.dart';
import 'package:simulador_examen/configs/colors.dart';

class ConstItemWidget extends StatelessWidget {
  const ConstItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Row(
        children: [
          const Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                'N° de Examen',
                textAlign: TextAlign.end,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                width: 20,
                color: colors.blue,
                child: const Text(
                  '21349',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
