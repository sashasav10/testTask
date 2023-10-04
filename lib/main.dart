import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(ColorChangeApp());
}

/// A Flutter application that changes the background color when tapped.
class ColorChangeApp extends StatefulWidget {
  @override
  _ColorChangeAppState createState() => _ColorChangeAppState();
}

class _ColorChangeAppState extends State<ColorChangeApp> {
  Color _backgroundColor = Colors.white;
  final int maxColorValue = 256; // Maximum color component value

  // Generate a random color
  void _changeBackgroundColor() {
    setState(() {
      _backgroundColor = Color.fromRGBO(
        Random().nextInt(maxColorValue),
        Random().nextInt(maxColorValue),
        Random().nextInt(maxColorValue),
        1.0,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GestureDetector(
          onTap: _changeBackgroundColor,
          child: ColoredBox(
            color: _backgroundColor,
            child: const Center(
              child: Text(
                'Hello there',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
