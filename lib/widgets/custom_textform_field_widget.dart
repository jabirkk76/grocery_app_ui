import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextFormFieldWidget extends StatelessWidget {
  const CustomTextFormFieldWidget({
    super.key,required this.hint
  });
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        hintText: hint,
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
        color: Colors.black,
      ),
    );
  }
}
