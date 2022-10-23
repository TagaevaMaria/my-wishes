import 'package:dev_two/ui/navigation/main_navigation.dart';
import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black),
      drawer: Drawer(
        backgroundColor: Colors.blue[100],
        child: ListView(
          children: [
            const DrawerHeader(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Text(
                  'Ж Е Л А Ю',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            ListTile(
              title: const Text('Мой профиль', style: TextStyle(fontSize: 25)),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Фото мечты', style: TextStyle(fontSize: 25)),
              onTap: () {
                Navigator.of(context)
                    .pushNamed(MainNavigationRoutsName.AddFotoWidget);
              },
            ),
            ListTile(
              title: const Text('Аффирмации', style: TextStyle(fontSize: 25)),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Заметки', style: TextStyle(fontSize: 25)),
              onTap: () {
                Navigator.of(context)
                    .pushNamed(MainNavigationRoutsName.NotesWidget);
              },
            ),
            ListTile(
              title: const Text('ГОША', style: TextStyle(fontSize: 25)),
              onTap: () {
                Navigator.of(context)
                    .pushNamed(MainNavigationRoutsName.ScreenGosha);
              },
            ),
          ],
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/menu.jpg'), fit: BoxFit.fill)),
      ),
    );
  }
}
