import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Search Store',
        prefixIcon: const Icon(Icons.search),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            15,
          ),
        ),
      ),
    );
  }
}
