import 'package:flutter/material.dart';
import 'package:moonlight/common_widgets/custom_button_widget.dart';
import 'package:moonlight/controller/sign_up_controller.dart';
import 'package:moonlight/helpers/app_localization.dart';
import 'package:moonlight/helpers/app_sizes.dart';

import 'package:provider/provider.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final signUpController =
        Provider.of<SignUpController>(context, listen: false);
    return Scaffold(
      body: Column(
        children: [
          AppSizes.szdh40,
          Image.asset('assets/images/Group.png'),
          AppSizes.szdh60,
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppLocalization.of(context)!.translate('Sign Up'),
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  AppLocalization.of(context)!.translate('credential'),
                ),
                AppSizes.szdh40,
                TextFormField(
                  decoration: InputDecoration(
                    labelText: AppLocalization.of(context)!.translate('User'),
                    hintText: 'Afssar Hossen Shuvo',
                    hintStyle: TextStyle(color: Colors.black),
                  ),
                ),
                AppSizes.szdh40,
                TextFormField(
                  decoration: InputDecoration(
                    labelText: AppLocalization.of(context)!.translate('Email'),
                    hintText: 'imshuvo97@gmail.com',
                    hintStyle: TextStyle(color: Colors.black),
                    suffixIcon: Icon(Icons.remove_red_eye_sharp),
                  ),
                ),
                AppSizes.szdh40,
                TextFormField(
                  decoration: InputDecoration(
                    labelText:
                        AppLocalization.of(context)!.translate('Password'),
                    alignLabelWithHint: true,
                    hintText: '********',
                    hintStyle: TextStyle(color: Colors.black),
                    suffixIcon: Icon(Icons.remove_red_eye_sharp),
                  ),
                ),
                AppSizes.szdh20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(AppLocalization.of(context)!
                        .translate('Forgot password?')),
                  ],
                ),
                AppSizes.szdh30,
                CustomButtonWidget(
                  text: AppLocalization.of(context)!.translate('Sign Up'),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return Dialog(
                          child: SizedBox(
                            height: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Account created successfully',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    signUpController.navigateToSignIn(context);
                                  },
                                  child: const Text(
                                    'OK',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(AppLocalization.of(context)!.translate('Having?')),
                    TextButton(
                      onPressed: () {
                        signUpController.navigateToPreviousScreen(context);
                      },
                      child: Text(
                        AppLocalization.of(context)!.translate('Sign in'),
                      ),
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
