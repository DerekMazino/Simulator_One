import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:simulador_examen/home/home_page.dart';
import 'package:simulador_examen/home/navigation_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FluentApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: FluentThemeData.light().copyWith(
        navigationPaneTheme: const NavigationPaneThemeData(
          backgroundColor: Color(0xFFA4B0BF),
          highlightColor: Color(0xFF457ABF),
        ),
      ),
      home: const NavigationScreen(),
    );
  }
}
