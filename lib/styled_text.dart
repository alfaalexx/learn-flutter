import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({super.key});

  @override
  Widget build(context) {
    return const Text(
      'Hello, My Name is Alfa Alexandra Simanjuntak. Nice to meet you!',
      style: TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),
    );
  }
}
