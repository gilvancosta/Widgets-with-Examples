import 'package:flutter/material.dart';

class Stack1Widget extends StatelessWidget {
  const Stack1Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack 1'),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            width: 300,
            height: 300,
            color: Colors.red,
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.yellow,
          ),
          Positioned(
            bottom: 40,
            left: 40,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.green,
            ),
          ),
          Center(
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
