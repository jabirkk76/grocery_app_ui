import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      thickness: 1,
      color: Color(0xFFE2E2E2),
    );
  }
}
