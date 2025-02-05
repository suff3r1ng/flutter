// import runApp
import 'package:flutter/material.dart';
import 'package:flutter_application_1/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 33, 5, 109),
          Color.fromARGB(255, 68, 21, 149),
        ),
      ),
    ),
  );
}
