import 'dart:math';

import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.black87,
        title: const Text('Hi, GhostMac 🚀'),
        centerTitle: false,
      ),
      body: Center(
        child: Text("Random number is: ${getRandomNumber()}")
      ),
      bottomNavigationBar: const SafeArea(
        child: Icon(Icons.rocket_launch),
      ),
    );
  }
}

int getRandomNumber() => Random().nextInt(100);