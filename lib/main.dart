import 'package:flutter/material.dart';
import 'package:se7ety/app_root/app_root.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Se7ety(),
    );
  }
}
