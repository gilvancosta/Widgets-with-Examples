import 'package:flutter/material.dart';

import '../core/widgets/alert-dialog/dialog01_widgets.dart';

class DialogsWidget extends StatelessWidget {
  const DialogsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialogs Page'),
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
                        return Dialog01Widget(context: context);
                      });
                },
                child: const Text('Dialog')),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return SimpleDialog(
                      title: const Text('Simple Dialog'),
                      children: [
                        const Padding(padding: EdgeInsets.all(10), child: Text('Simple Dialog')),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Fechar')),
                      ],
                    );
                  },
                );
              },
              child: const Text('SimpleDialog'),
            ),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
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
                      });
                },
                child: const Text('AlertDialog')),
            ElevatedButton(
                onPressed: () async {
                  final selectedTime = await showTimePicker(context: context, initialTime: TimeOfDay.now());
                  // ignore: avoid_print, use_build_context_synchronously
                  print('{O Horário selecionado foi: ${selectedTime?.format(context)}}');
                },
                child: const Text('TimePicker')),
            ElevatedButton(
                onPressed: () async {
                  final selectedDate = await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(2010), lastDate: DateTime(2025));
                  // ignore: avoid_print
                  print('{A data selecionada foi: ${selectedDate?.day}/${selectedDate?.month}/${selectedDate?.year}');
                },
                child: const Text('DatePicker')),
            ElevatedButton(
                onPressed: () {
                  showAboutDialog(context: context, applicationName: 'App Name', applicationVersion: '1.0.0', applicationIcon: const Icon(Icons.ac_unit), children: const [
                    Text('About Dialog'),
                    Text('About Dialog'),
                    Text('About Dialog'),
                  ]);
                },
                child: const Text('showAboutDialog')),
          ],
        ),
      ),
    );
  }
}
