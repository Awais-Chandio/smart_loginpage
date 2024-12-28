
// ignore: unused_import
import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final String ImagePath;
  const SquareTile({super.key, required this.ImagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey[200],
      ),
      child: Image.asset(
        ImagePath,
        height: 40,
      ),
    );
  }
}
