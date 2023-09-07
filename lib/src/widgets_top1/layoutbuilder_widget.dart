import 'package:flutter/material.dart';

class LayoutBuilderWidget extends StatelessWidget {
  const LayoutBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout builder Widget'),
      ),
      body: Center(child: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  color: Colors.red,
                  width: constraints.maxWidth * 0.75,
                  height: constraints.maxHeight * 0.5,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [],
                  )),
              Container(
                color: Colors.blue,
                width: constraints.maxWidth,
                height: constraints.maxHeight * 0.5,
              )
            ],
          );
        },
      )),
    );
  }
}
