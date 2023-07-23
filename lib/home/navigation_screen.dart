import 'package:fluent_ui/fluent_ui.dart';
import 'package:simulador_examen/home/examen_page.dart';
import 'package:simulador_examen/home/widget/botton_widget.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _currentIdex = 0;
  @override
  Widget build(BuildContext context) {
    return NavigationView(
      appBar: NavigationAppBar(
        height: 100,
        backgroundColor: const Color(0xFFA4B0BF),
        actions: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                SizedBox(
                  width: 30,
                ),
                RoundedButton(
                  text: 'Datos Administrativos',
                ),
                RoundedButton(
                  text: 'Historia Clínica',
                ),
                RoundedButton(
                  text: 'Informes y Exámenes',
                ),
                RoundedButton(
                  text: 'Agendas',
                )
              ],
            ),
          ],
        ),
        leading: const Center(
          child: FlutterLogo(size: 25),
        ),
      ),
      pane: NavigationPane(
        header: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: DefaultTextStyle(
            style: FluentTheme.of(context).typography.title!,
            child: const Text('Simulador examen'),
          ),
        ),
        items: [
          PaneItem(
            icon: const Icon(FluentIcons.add_work),
            title: const Text('LISTA DE TRABAJO'),
            body: const Text('Screen 2'),
          ),
          PaneItem(
            icon: const Icon(FluentIcons.check_list),
            title: const Text('ESTUDIOS REALIZADOS'),
            body: const Text('Screen 2'),
          ),
          PaneItem(
            icon: const Icon(FluentIcons.learning_app),
            title: const Text('ESTUDIOS RECITADOS'),
            body: const Text('Screen 2'),
          ),
          PaneItem(
            icon: const Icon(FluentIcons.text_box),
            title: const Text('ESTUDIOS SUSPENDIDOS'),
            body: const Text('Screen 2'),
          ),
          PaneItem(
            icon: const Icon(FluentIcons.text_box),
            title: const Text('ESTUDIOS CANCELADOS'),
            body: const Text('Screen 2'),
          ),
        ],
        footerItems: [
          PaneItem(
            icon: const Icon(FluentIcons.learning_app),
            title: const Text('INICIAR EXAMEN'),
            body: const ExamenPage(),
          ),
          PaneItem(
            icon: const Icon(FluentIcons.text_box),
            title: const Text('CANCELAR EXAMEN'),
            body: const Text('Screen 2'),
          ),
        ],
        selected: _currentIdex,
        displayMode: PaneDisplayMode.auto,
        onChanged: (i) {
          setState(() {
            _currentIdex = i;
          });
        },
      ),
    );
  }
}
