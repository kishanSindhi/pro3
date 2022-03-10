import 'package:flutter/material.dart';

import 'screens/splashhScreen.dart';

void main() {
  runApp(MaterialApp(
    title: 'Demo',
    theme: ThemeData(
      backgroundColor: Colors.pinkAccent,
    ),
    home: const Splash(),
  ));
}
