import 'package:flutter/material.dart';

class RowsColumnsWidget extends StatelessWidget {
  const RowsColumnsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Rows and Columns'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Elemento 1'),
                Text('Elemento 2'),
                Text('Elemento 3'),
              ],
            ),
            Container(
              color: Colors.yellow[50],
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Elemento 4'),
                  Text('Elemento 5'),
                  Text('Elemento 6'),
                ],
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Elemento 7'),
                Text('Elemento 8'),
                Text('Elemento 9'),
              ],
            ),
          ],
        ));
  }
}
