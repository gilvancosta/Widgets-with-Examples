import 'package:flutter/material.dart';

class SnackbarWidget extends StatelessWidget {
  const SnackbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Snackbar Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    final snackBar = SnackBar(
                      content: const Text('Hello SnackBar!'),
                      backgroundColor: Colors.amber,
                      action: SnackBarAction(
                        label: 'Concordo',
                        onPressed: () {
                          // Some code to undo the change.
                        },
                      ),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: const Text('Show SnackBar')),
              ElevatedButton(
                  onPressed: () {
                    final snackBar = SnackBar(
                      content: const Text('User registered successfully!'),
                      action: SnackBarAction(
                        label: 'Agree',
                        onPressed: () {
                          // Some code to undo the change.
                        },
                      ),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    ScaffoldMessenger.of(context).removeCurrentSnackBar();
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: const Text('SnackBarAction')),
            ],
          ),
        ));
  }
}
