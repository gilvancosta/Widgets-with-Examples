import 'package:flutter/material.dart';

class FontsPage extends StatelessWidget {
  const FontsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Fontes Page',
          style: TextStyle(fontFamily: 'Tourney'),
        ),
        backgroundColor: Colors.red[900],
        actions: const [Icon(Icons.add_link_outlined)],
      ),
      body: const Center(
        child: Text(
          'Hello, World!',
          style: TextStyle(fontSize: 24, fontFamily: 'Tourney'),
        ),
      ),
    );
  }
}
