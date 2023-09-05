import 'package:flutter/material.dart';

class BuildContextWidget extends StatelessWidget {

  const BuildContextWidget({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Build Context Widget'),),
           body: Container(),
       );
  }
}