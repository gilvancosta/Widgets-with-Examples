// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AlertDialogOk extends StatelessWidget {
  final String title;
  final String content;

  const AlertDialogOk({
    Key? key,
    required this.title,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' não posso criar um AlertDialogOk'),
      ),
      body: Container(),
    );
  }
}
