// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:grocery_app/controller/language_screen_controller.dart';
import 'package:grocery_app/controller/localization_controller.dart';
import 'package:grocery_app/helpers/app_sizes.dart';
import 'package:grocery_app/styles/colors.dart';

import 'package:provider/provider.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final languageScreenController =
        Provider.of<LanguageScreenController>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Language',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: AppColor.primaryColor),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 162, 132, 22),
                    radius: 30,
                    child: Icon(
                      Icons.language_outlined,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Select the language',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )
                ],
              ),
              AppSizes.szdh20,
              Consumer<LocalizationController>(
                builder: (context, value, child) => Column(
                  children: [
                    Row(
                      children: [
                        Radio(
                          activeColor: const Color.fromARGB(255, 162, 132, 22),
                          value: 'English',
                          groupValue: value.defineCurrentLanguage(context),
                          onChanged: (newLanguage) {
                            value.changeLanguage(newLanguage, context);
                          },
                        ),
                        const Text('English')
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          activeColor: const Color.fromARGB(255, 162, 132, 22),
                          value: 'Malayalam',
                          groupValue: value.defineCurrentLanguage(context),
                          onChanged: (newLanguage) {
                            value.changeLanguage(newLanguage, context);
                          },
                        ),
                        const Text('Malayalam')
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          activeColor: const Color.fromARGB(255, 162, 132, 22),
                          value: 'Tamil',
                          groupValue: value.defineCurrentLanguage(context),
                          onChanged: (newLanguage) {
                            value.changeLanguage(newLanguage, context);
                          },
                        ),
                        const Text('Tamil'),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          activeColor: const Color.fromARGB(255, 162, 132, 22),
                          value: 'Hindi',
                          groupValue: value.defineCurrentLanguage(context),
                          onChanged: (newLanguage) {
                            value.changeLanguage(newLanguage, context);
                          },
                        ),
                        const Text('Hindi')
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          activeColor: const Color.fromARGB(255, 162, 132, 22),
                          value: 'Gujarati',
                          groupValue: value.defineCurrentLanguage(context),
                          onChanged: (newLanguage) {
                            value.changeLanguage(newLanguage, context);
                          },
                        ),
                        const Text('Gujarati')
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
