import 'package:dev_two/ui/navigation/main_navigation.dart';
import 'package:dev_two/ui/widget/enter.dart';
import 'package:dev_two/ui/main_screen/main_screen_widget.dart';
import 'package:dev_two/ui/widget/gosha/screen_gosha.dart';
import 'package:dev_two/ui/widget/menu/foto/add_foto_widget.dart';
import 'package:dev_two/ui/widget/notes/notes_widget.dart';
import 'package:flutter/material.dart';

void main() {
  const app = App();
  runApp(app);
}

class App extends StatelessWidget {
  static final mainNavigation = MainNavigation();
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        MainNavigationRoutsName.Enter: (context) => const Enter(),
        MainNavigationRoutsName.MainScreen: (context) => const MainScreen(),
        MainNavigationRoutsName.NotesWidget: (context) => const NotesWidget(),
        MainNavigationRoutsName.ScreenGosha: (context) => const ScreenGosha(),
        MainNavigationRoutsName.AddFotoWidget: (context) =>
            const AddFotoWidget(),
      },
      initialRoute: mainNavigation.initialRoute,
    );
  }
}
