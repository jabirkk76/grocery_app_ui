// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class LabelWidget extends StatelessWidget {
  LabelWidget({Key? key, required this.text}) : super(key: key);
  String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}
