import 'package:flutter/material.dart';

class CoresWidget extends StatelessWidget {
  const CoresWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const cor = Colors.red;
    // const cor = Color.fromRGBO(255, 0, 0, 0.5);
    // final cor = Colors.red.withOpacity((0.5));
    // var cor = const Color(0XFF45D1FD); // HEXADECIMAL

    return Scaffold(
      appBar: AppBar(
        title: const Text('Colors Page'),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          color: cor,
        ),
      ),
    );
  }
}
