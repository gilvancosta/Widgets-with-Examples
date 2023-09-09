import 'package:flutter/material.dart';

class NavegatorBarPage1 extends StatelessWidget {
  const NavegatorBarPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            const Text('HOME'),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Voltar 2'),
            ),
          ],
        ),
      ),
    );
  }
}
