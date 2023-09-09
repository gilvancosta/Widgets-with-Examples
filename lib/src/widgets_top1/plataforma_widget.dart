import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlataformaWidget extends StatelessWidget {
  const PlataformaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plataform'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        if (Platform.isAndroid) { // coloquei assim para visualizar a forma de uso no IOS
                          return CupertinoAlertDialog(
                            title: const Text('AlertDialog'),
                            content: const Text('Deseja realmente excluir?'),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text('Cancelar')),
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text('Excluir')),
                            ],
                          );
                        } else {
                          return AlertDialog(
                            title: const Text('AlertDialog'),
                            content: const Text('Deseja realmente excluir?'),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text('Cancelar')),
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text('Excluir')),
                            ],
                          );
                        }
                      });
                },
                child: const Text('AlertDialog')),
            ElevatedButton(
                onPressed: () async {
                  final selectedDate = await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(2010), lastDate: DateTime(2025));
                  // ignore: avoid_print
                  print('{A data selecionada foi: ${selectedDate?.day}/${selectedDate?.month}/${selectedDate?.year}');
                },
                child: const Text('DatePicker')),
            ElevatedButton(
                onPressed: () async {
                  final selectedTime = await showTimePicker(context: context, initialTime: TimeOfDay.now());
                  // ignore: avoid_print, use_build_context_synchronously
                  print('{O Horário selecionado foi: ${selectedTime?.format(context)}}');
                },
                child: const Text('TimePicker')),
          ],
        ),
      ),
    );
  }
}
