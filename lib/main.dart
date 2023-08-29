import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 7, 8, 50),
          Color.fromARGB(255, 188, 29, 153),
        ),
      ),
    ),
  );
}
