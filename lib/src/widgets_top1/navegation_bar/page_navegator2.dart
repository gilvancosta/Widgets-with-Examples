import 'package:flutter/material.dart';

class NavegatorBarPage2 extends StatelessWidget {
  const NavegatorBarPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            const Text('BUSSINES'),
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
