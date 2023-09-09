import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

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
                  onPressed: () => ScaffoldMessenger.of(context).showMaterialBanner(
                        MaterialBanner(
                          padding: const EdgeInsets.all(10),
                          content: const Text('Hello, I am a Material Banner'),
                          leading: const Icon(Icons.agriculture_outlined),
                          backgroundColor: Colors.amber,
                          forceActionsBelow: true,
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                              },
                              child: const Text('Cancelar'),
                            ),
                          ],
                        ),
                      ),
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
