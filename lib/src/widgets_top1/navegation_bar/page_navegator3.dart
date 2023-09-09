import 'package:flutter/material.dart';

class NavegatorBarPage3 extends StatelessWidget {
  const NavegatorBarPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            const Text('EDUCATION'),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Voltar 3'),
            ),
          ],
        ),
      ),
    );
  }
}
