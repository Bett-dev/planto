import 'package:flutter/material.dart';
import 'package:planto/classes/planto.dart';

void main() {
  runApp(const PlantoApp());
}

class PlantoApp extends StatelessWidget {
  const PlantoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Planto(),
    );
  }
}
