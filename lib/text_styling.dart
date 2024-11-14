import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({super.key});

  // display readable text
  @override
  Widget build(context) {
    return const Text(
      'The Context Strategy',
      style: TextStyle(color: Colors.green, fontSize: 28.0),
    );
  }
}