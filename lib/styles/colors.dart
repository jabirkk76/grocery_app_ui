import 'dart:ui';

import 'package:flutter/material.dart';

class AppColor {
  static AppColor? _instance;
  factory AppColor() => _instance ??= AppColor._();

  AppColor._();

  static const primaryColor = Color(0xff53B175);
  static const darkGrey = Color(0xff7C7C7C);
}
