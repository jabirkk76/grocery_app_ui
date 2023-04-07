// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class PaddingWidget extends StatelessWidget {
  PaddingWidget({Key? key, required this.widget}) : super(key: key);
  Widget widget;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: widget,
    );
  }
}
