import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const MyButton({
    Key? key,  // Corrected key parameter
    required this.text,
    required this.onTap,
  }) : super(key: key);  // Initialize super constructor with key parameter

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.yellow[300],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(24.0),  // Adjust padding as needed
            child: Center(
              child: Text(
                text,
                style: GoogleFonts.alice(
                  color: const Color.fromARGB(255, 24, 23, 23),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
