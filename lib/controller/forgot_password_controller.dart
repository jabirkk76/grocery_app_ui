// import 'dart:developer';

// import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:grocery_app/screens/verify_email_id_screen/verify_email_id_screen.dart';

class ForgotPasswordController with ChangeNotifier {
  TextEditingController emailController = TextEditingController();

  void navigateVerifyEmailId(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => VerifyEmailIdScreen(),
    ));
  }
}
