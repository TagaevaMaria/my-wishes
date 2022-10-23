import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddFotoWidgetModel {
  final String foto;

  AddFotoWidgetModel({required this.foto});
}

class AddFotoWidget extends StatelessWidget {
  const AddFotoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FotoList(),
    );
  }
}

class FotoList extends StatefulWidget {
  FotoList({Key? key}) : super(key: key);

  @override
  _FotoListState createState() => _FotoListState();
}

class _FotoListState extends State<FotoList> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
