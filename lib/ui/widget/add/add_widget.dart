import 'package:flutter/material.dart';

class AddWidget extends StatelessWidget {
  const AddWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(child: ListView()),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/add.jpg'), fit: BoxFit.fill)),
      ),
    );
  }
}
