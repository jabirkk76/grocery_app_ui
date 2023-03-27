// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:moonlight/common_widgets/custom_button_widget.dart';
import 'package:moonlight/controller/language_controller.dart';
import 'package:moonlight/controller/sign_in_controller.dart';
import 'package:moonlight/helpers/app_localization.dart';

import 'package:moonlight/helpers/app_sizes.dart';

import 'package:provider/provider.dart';

class SignInScreen extends StatefulWidget {
  SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
          Consumer<LanguageController>(
            builder: (context, value, child) {
              return Container(
                width: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(2),
                ),
                child: DropdownButton<String>(
                  value: value.defineCurrentLanguage(context),
                  icon: const Icon(
                    Icons.arrow_downward,
                    color: Colors.white,
                  ),
                  iconSize: 20,
                  elevation: 0,
                  style: const TextStyle(color: Colors.white),
                  underline: Container(
                    height: 1,
                  ),
                  dropdownColor: Colors.indigo,
                  onChanged: (newValue) {
                    print(newValue);
                    value.changeLanguage(newValue!);
                  },
                  items: value.languages.map<DropdownMenuItem<String>>(
                    (String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    },
                  ).toList(),
                ),
              );
            },
          ),
          Row(
            children: [
              Image.asset('assets/images/Group.png'),
            ],
          ),
          AppSizes.szdh90,
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppLocalization.of(context)!.translate('Login'),
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                ),
                AppSizes.szdh15,
                Text(
                  AppLocalization.of(context)!
                      .translate('Enter- your emails and password'),
                ),
                AppSizes.szdh40,
                TextFormField(
                  decoration: InputDecoration(
                      labelText:
                          AppLocalization.of(context)!.translate('Email'),
                      hintText: 'jabirkk76@gmail.com'),
                ),
                AppSizes.szdh40,
                TextFormField(
                  decoration: InputDecoration(
                    labelText:
                        AppLocalization.of(context)!.translate('Password'),
                    hintText: '********',
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
                  text: AppLocalization.of(context)!.translate('Login'),
                  onTap: () {
                    signInController.navigateToBottomNavWidget(context);
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(AppLocalization.of(context)!
                        .translate('Don\'t have an account?')),
                    TextButton(
                      onPressed: () {
                        signInController.navigateToSignUp(context);
                      },
                      child: Text(
                        AppLocalization.of(context)!.translate('Signup'),
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
