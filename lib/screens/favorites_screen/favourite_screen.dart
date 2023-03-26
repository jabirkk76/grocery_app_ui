import 'package:flutter/material.dart';
import 'package:grocery_app/common_widgets/app_text.dart';

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
          "My Favorites",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Container(
        child: Center(
          child: AppText(
            text: "No Favorite Items",
            fontWeight: FontWeight.w600,
            color: Color(0xFF7C7C7C),
          ),
        ),
      ),
    );
  }
}
