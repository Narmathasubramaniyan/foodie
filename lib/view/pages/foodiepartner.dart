import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Foodie extends StatefulWidget {
  const Foodie({super.key});

  @override
  _FoodieState createState() => _FoodieState();
}

class _FoodieState extends State<Foodie> {
  // Add necessary controllers and variables for Foodie functionality

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Foodie'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Add Foodie specific widgets and functionality
          ],
        ),
      ),
    );
  }
}

class InputField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool obscureText;
  final void Function(String) onSubmitted;

  const InputField({
    super.key,
    required this.hintText,
    required this.controller,
    this.obscureText = false,
    required this.onSubmitted,
  });

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

class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const MyButton({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.yellow[400],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Center(
              child: Text(
                text,
                style: GoogleFonts.alice(
                  color: const Color.fromARGB(255, 24, 23, 23),
                  fontSize: 20,
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