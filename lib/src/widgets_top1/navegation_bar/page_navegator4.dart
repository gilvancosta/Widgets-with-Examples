import 'package:flutter/material.dart';

class NavegatorBarPage4 extends StatelessWidget {
  const NavegatorBarPage4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            const Text('SETTINGS'),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Voltar 4'),
            ),
          ],
        ),
      ),
    );
  }
}
