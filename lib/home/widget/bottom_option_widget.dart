import 'package:flutter/material.dart';

class BottomOptionsWidget extends StatelessWidget {
  const BottomOptionsWidget({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 60,
          color: const Color(0xFF182E59),
        ),
        Text(text),
      ],
    );
  }
}
