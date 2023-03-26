// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:grocery_app/controller/sign_in_controller.dart';
import 'package:grocery_app/helpers/app_sizes.dart';

import 'package:grocery_app/common_widgets/custom_button_widget.dart';
import 'package:provider/provider.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final signInController =
        Provider.of<SignInController>(context, listen: false);
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 90,
          ),
          Image.asset('assets/images/Group.png'),
          AppSizes.szdh90,
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Loging',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                ),
                AppSizes.szdh15,
                const Text('Enter your emails and password'),
                AppSizes.szdh40,
                TextFormField(
                  decoration: const InputDecoration(
                      labelText: 'Email', hintText: 'Imshuvo97@gmail.com'),
                ),
                AppSizes.szdh40,
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    hintText: '********',
                    suffixIcon: Icon(Icons.remove_red_eye_sharp),
                  ),
                ),
                AppSizes.szdh20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text('Forgot password?'),
                  ],
                ),
                AppSizes.szdh30,
                CustomButtonWidget(
                    text: 'Log In',
                    onTap: () {
                      signInController.navigateToBottomNavWidget(context);
                    }),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Dont\'t have an account?'),
                    TextButton(
                      onPressed: () {
                        signInController.navigateToSignUp(context);
                      },
                      child: const Text('Signup'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
