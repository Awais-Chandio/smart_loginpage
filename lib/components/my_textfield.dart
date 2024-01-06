// ignore: unused_import
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final String HintText;
  final bool obscureText;
  const MyTextField(
      {super.key,
      required this.HintText,
      required this.controller,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            hintText: HintText,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade400)),
            fillColor: Colors.grey.shade200,
            filled: true,
            hintStyle: TextStyle(color: Colors.grey[500])),
      ),
    );
  }
}
