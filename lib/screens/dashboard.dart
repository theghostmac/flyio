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
      body: const Row(
        children: [
          
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const [
            BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Transactions',
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Learn',
            ),
        ],
      ),
    );
  }
}

int getRandomNumber() => Random().nextInt(100);
