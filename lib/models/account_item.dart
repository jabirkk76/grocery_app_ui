import 'package:flutter/material.dart';

class AccountItem {
  final String label;
  final String iconPath;
  final Widget page;

  AccountItem(this.label, this.iconPath, {required this.page});
}
