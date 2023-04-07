// ignore_for_file: body_might_complete_normally_nullable

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:grocery_app/utils/app_utils.dart';

import 'package:image_picker/image_picker.dart';


class AccountScreenController with ChangeNotifier {
  File? image;
  Future<File?> pickImage(ImageSource source) async {
    image = await AppUtils().imagePick(source);
    notifyListeners();
  }
}
