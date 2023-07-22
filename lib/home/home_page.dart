import 'package:flutter/material.dart';
import 'package:simulador_examen/home/widget/botton_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _selectedIndex = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  final List<Widget> _pages = [
    DatosAdministrativosPage(),
    HistoriaClinicaPage(),
    InformesExamenesPage(),
    AgendasPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.red,
        backgroundColor: Colors.red,
        currentIndex: _selectedIndex, // Índice del botón seleccionado
        onTap: _onItemTapped, // Función llamada cuando se selecciona un botón
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Datos Administrativos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_hospital),
            label: 'Historia Clínica',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_chart),
            label: 'Informes y Exámenes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Agendas',
          ),
        ],
      ),

      body: Column(
        children: [],
      ),

      //_pages[_selectedIndex],
    );
  }
}

class DatosAdministrativosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Página de Datos Administrativos'),
    );
  }
}

class HistoriaClinicaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Página de Historia Clínica'),
    );
  }
}

class InformesExamenesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Página de Informes y Exámenes'),
    );
  }
}

class AgendasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Página de Agendas'),
    );
  }
}
