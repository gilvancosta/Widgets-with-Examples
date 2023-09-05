import 'package:flutter/material.dart';

class SnackbarWidget extends StatelessWidget {

  const SnackbarWidget({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Snackbar Widget'),),
           body: Container(),
       );
  }
}