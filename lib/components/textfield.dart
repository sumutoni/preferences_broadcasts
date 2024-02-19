import 'package:flutter/material.dart';

class MyTextFields extends StatelessWidget {
  final controller;
  final bool obscureText;
  final String hintText;

  const MyTextFields({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color:Color.fromARGB(255, 220, 217, 226))
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 34, 34, 34))
          ),
          fillColor: const Color.fromARGB(255, 220, 217, 226),
          filled: true,
          hintText: hintText
        ),
        obscureText: obscureText,
      )
    );
  }
}