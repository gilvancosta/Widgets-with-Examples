import 'package:flutter/material.dart';

class Dialog01Widget extends Dialog {
  Dialog01Widget({super.key, required BuildContext context})
      : super(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: SizedBox(
              height: 200,
              width: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Dialog Custom 01'),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Fechar')),
                ],
              ),
            ));
}
