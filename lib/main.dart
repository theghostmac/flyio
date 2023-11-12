import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Fly.io 🚀',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          foregroundColor: Colors.black87,
          title: const Text('Hi, GhostMac 🚀'),
          centerTitle: false,
        ),
        body: const Center(
          child: Text.rich(
            TextSpan(
              text: "Welcome to Fly.io!",
              children: [
                TextSpan(
                  text: " We cherish our customers",
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: " Please patronize us today!",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
