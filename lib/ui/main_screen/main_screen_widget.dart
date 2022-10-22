import 'package:flutter/material.dart';
import 'main_screen_widget_model.dart';

/// хранит модель
class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _model = MainScreenWidgetModel();
  @override
  Widget build(BuildContext context) {
    print('build');
    return MainScreenWidgetModelProvider(
        model: _model, child: MainScreenBody());
  }
}

///верстка всего экрана
class MainScreenBody extends StatelessWidget {
  MainScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = MainScreenWidgetModelProvider.watch(context)?.model;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/two.jpg'), fit: BoxFit.fill)),
        child: model?.pages[model.selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: (model != null) ? model.selectedIndex : 0,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          model?.onItemTap(index);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Меню',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
            ),
            label: 'Добавить',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.share), label: 'Поделиться'),
        ],
      ),
    );
  }
}
