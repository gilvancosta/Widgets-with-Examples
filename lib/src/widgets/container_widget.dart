import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 10),
                  color: Colors.red[200],
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(color: Colors.green, blurRadius: 20, offset: Offset(10, 10)),
                    BoxShadow(color: Colors.black, blurRadius: 20, offset: Offset(-10, 10)),
                  ],
                ),
                child: const Center(
                  child: Text(
                    'Hello, World!',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
            ],
          ),
          Row(),
        ],
      ),
    );
  }
}
