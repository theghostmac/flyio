import 'package:flutter/material.dart';
import 'screens/dashboard.dart';

void main() => runApp(const FlyioApp());

class FlyioApp extends StatelessWidget {
  const FlyioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fly.io 🚀',
      themeMode: ThemeMode.system,
      home: Dashboard(),
    );
  }
}
