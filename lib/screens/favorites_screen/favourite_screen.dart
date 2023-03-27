// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:moonlight/common_widgets/app_text.dart';
import 'package:moonlight/helpers/app_localization.dart';

class FavouriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          AppLocalization.of(context)!.translate('My Favourites'),
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Center(
        child: AppText(
          text: AppLocalization.of(context)!.translate('No Favorite Items'),
          fontWeight: FontWeight.w600,
          color: Color(0xFF7C7C7C),
        ),
      ),
    );
  }
}
