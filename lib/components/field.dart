import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';







//FIELDS
class Field extends StatelessWidget {
  final controller;
  final bool obscureText;
  final labelText;



  const Field({
    super.key,
    required this.controller,
    required this.obscureText,
    required this.labelText,


  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xFF3D550C)),
          ),
          fillColor: Colors.white,
          filled: true,
          labelText: labelText,
          labelStyle:  GoogleFonts.poppins(color: Colors.grey[500]),
        ),
      ),
    );
  }
}






