import 'package:flutter/material.dart';

class BotoesWidget extends StatelessWidget {
  const BotoesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Bottons and Texts', style: TextStyle(color: Colors.amber)),
          backgroundColor: Colors.blue[900],
        ),
        body: Center(child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    color: Colors.green[50],
                    height: constraints.maxHeight * 0.8,
                    width: constraints.maxWidth * 0.9,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: const Text('ElevatedButton'),
                                  content: const Text('Exemplo de uso do ElevatedButton'),
                                  actions: [
                                    TextButton(onPressed: () => Navigator.pop(context), child: const Text('OK')),
                                  ],
                                );
                              },
                            );
                          },
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.red, shadowColor: Colors.brown, minimumSize: const Size(200, 40)),
                          child: const Text("ElevatedButton"),
                        ),
                        ElevatedButton.icon(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(minimumSize: const Size(200, 40)),
                          icon: const Icon(Icons.air, size: 18),
                          label: const Text("Modo Avião"),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            foregroundColor: Colors.white,
                            shadowColor: Colors.greenAccent,
                            elevation: 3,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
                            minimumSize: const Size(200, 40), //////// HERE
                          ),
                          onPressed: () {},
                          child: const Text('Hey bro'),
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          child: const Text("OutlinedButton"),
                        ),
                        TextButton(
                          onPressed: () {},
                          // style: ButtonStyle(foregroundColor: MaterialStateProperty.all<Color>(Colors.blue)),
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.green,
                            shadowColor: Colors.greenAccent,
                            elevation: 3,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
                            minimumSize: const Size(200, 40), /// TAMANHO DO BOTÃO
                          ),

                          child: const Text("TextButton"),
                        ),
                        IconButton(
                          icon: const Icon(Icons.favorite_outline),
                          iconSize: 40,
                          color: Colors.red,
                          onPressed: () {},
                        ),
                        FloatingActionButton(
                          //FloatingActionButton (FAB) é uma propriedade de Scaffold()
                          onPressed: () {},
                          backgroundColor: Colors.red[900],
                          child: const Icon(Icons.add),
                        ),
                        const SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () => {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.resolveWith((states) {
                              if (states.contains(MaterialState.pressed)) {
                                return Colors.black;
                              } else if (states.contains(MaterialState.hovered)) {
                                return Colors.amber;
                              }
                              // ignore: dead_code
                              return Colors.red[900];
                            }),
                            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                            shadowColor: MaterialStateProperty.all(Colors.blue[900]),
                            minimumSize: MaterialStateProperty.all<Size>(const Size(200, 50)),
                            elevation: MaterialStateProperty.all<double>(3),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0),
                              ),
                            ),
                          ),
                          child: const Text('Page 2'),
                        ),
                        const SizedBox(height: 10),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 200,
                            height: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(32.0),
                              color: Colors.blue[900],
                            ),
                            child: const Center(
                              child: Text(
                                'InkWell',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        GestureDetector(
                          // ignore: avoid_print
                          onTap: () => print('GestureDetector'),
                          child: Container(
                            width: 200,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(32.0),
                              color: Colors.blue[900],
                            ),
                            child: const Center(
                              child: Text(
                                'GestureDetector',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          width: 200,
                          height: 40,
                          decoration: const BoxDecoration(
                            // color: Colors.blue[900],
                            gradient: LinearGradient(
                              colors: [Colors.blue, Colors.green],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(32.0)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.red,
                                blurRadius: 5.0,
                                spreadRadius: 1.0,
                                offset: Offset(1, 1),
                              ),
                            ],
                        
                          ),
                          child: const Center(
                            child: Text(
                              'Container',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    )),
                Container(
                  color: Colors.blue[50],
                  width: constraints.maxWidth,
                  height: constraints.maxHeight * 0.2,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RotatedBox(
                          quarterTurns: -1,
                          child: Text('RotatedBox', style: TextStyle(fontSize: 16, color: Colors.blue[900])),
                        ),
                      ]),
                )
              ],
            );
          },
        )));
  }
}
