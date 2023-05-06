import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/controller/forgot_password_controller.dart';
import 'package:grocery_app/helpers/app_sizes.dart';
import 'package:grocery_app/screens/sign_in_screen/sign_in_screen.dart';
import 'package:grocery_app/styles/colors.dart';

import 'package:provider/provider.dart';

class EnterNewPasswordScreen extends StatelessWidget {
  const EnterNewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final forgotPasswordController =
        Provider.of<ForgotPasswordController>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Create New Password',
          style: TextStyle(color: AppColor.primaryColor),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppSizes.szd10,
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter new password',
                  hintStyle: TextStyle(fontSize: 16),
                  fillColor: const Color(0xffF2F2F7),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  labelStyle: GoogleFonts.acme(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: const Color(0x4c3c3c43),
                  ),
                ),
                style: GoogleFonts.acme(
                  fontSize: 20,
                  height: 0.5,
                  fontWeight: FontWeight.w400,
                ),
              ),
              AppSizes.szdh50,
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 223, 222, 222),
                  ),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        duration: Duration(seconds: 3),
                        content: Center(
                            child: Text("Password changed successfully")),
                        backgroundColor: Colors.green,
                      ),
                    );
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SignInScreen(),
                    ));
                  },
                  child: Text(
                    'Continue',
                    style:
                        TextStyle(fontSize: 16, color: AppColor.primaryColor),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
