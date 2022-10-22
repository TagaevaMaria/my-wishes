import 'package:flutter/material.dart';

class NotesWidget extends StatelessWidget {
  const NotesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'Заметки',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: const TextField(
        autofocus: false,
        maxLines: null,
        minLines: null,
        expands: true,
      ),
    );
  }
}
