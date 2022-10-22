import 'package:flutter/material.dart';

class Enter extends StatelessWidget {
  const Enter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/lampa.jpg'), fit: BoxFit.fill)),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).pushNamed('/MainScreen');
        },
        label: const Text('Далее'),
      ),
    );
  }
}
