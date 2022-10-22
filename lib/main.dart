import 'package:dev_two/ui/widget/enter.dart';
import 'package:dev_two/ui/main_screen/main_screen_widget.dart';
import 'package:dev_two/ui/widget/gosha/screen_gosha.dart';
import 'package:dev_two/ui/widget/notes/notes_widget.dart';
import 'package:flutter/material.dart';

void main() {
  const app = App();
  runApp(app);
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, routes: {
      '/': (context) => const Enter(),
      '/MainScreen': (context) => const MainScreen(),
      '/NotesWidget': (context) => const NotesWidget(),
      '/ScreenGosha': (context) => const ScreenGosha(),
    });
  }
}
