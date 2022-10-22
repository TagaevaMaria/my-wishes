import 'package:flutter/material.dart';
import '../widget/add/add_widget.dart';
import '../widget/menu/menu_widget.dart';
import '../widget/share.dart';

class MainScreenWidgetModel extends ChangeNotifier {
  ///переключение по экранам
  int selectedIndex = 1;
  onItemTap(int index) {
    print(index);
    selectedIndex = index;
    notifyListeners();
  }

  /// лист виджетов, которые будут открываться при нажатии)
  final List<Widget> pages = [
    const MenuWidget(),
    const AddWidget(),
    const Share(),
  ];
}

class MainScreenWidgetModelProvider extends InheritedNotifier {
  final MainScreenWidgetModel model;
  MainScreenWidgetModelProvider({
    Key? key,
    required this.model,
    required Widget child,
  }) : super(key: key, child: child, notifier: model);

  static MainScreenWidgetModelProvider? watch(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<MainScreenWidgetModelProvider>();
  }

  static MainScreenWidgetModelProvider? read(BuildContext context) {
    final widget = context
        .getElementForInheritedWidgetOfExactType<
            MainScreenWidgetModelProvider>()
        ?.widget;
    return widget is MainScreenWidgetModelProvider ? widget : null;
  }

  PageController pageController = PageController();
  @override
  bool updateShouldNotify(MainScreenWidgetModelProvider oldWidget) {
    return true;
  }
}
