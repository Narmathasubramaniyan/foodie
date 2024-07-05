import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool obscureText;
  final void Function(String) onSubmitted;

  const InputField({
    Key? key,
    required this.hintText,
    required this.controller,
    this.obscureText = false,
    required this.onSubmitted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.yellow[300],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: TextField(
            controller: controller,
            obscureText: obscureText,
            onSubmitted: onSubmitted,
            style: GoogleFonts.alice(
              color: const Color.fromARGB(255, 24, 23, 23),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: GoogleFonts.alice(
                color: const Color.fromARGB(150, 24, 23, 23),
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}