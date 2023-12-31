import 'package:flutter/material.dart';

import '../../core/widgets/PopupMenuButton/popupmenubutton_widget_v1.dart';
import '../../core/widgets/drawer/drawer_v1_widget.dart';

class HomePageApp extends StatefulWidget {
  final String title;

  const HomePageApp({super.key, required this.title});

  @override
  State<HomePageApp> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<HomePageApp> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //  backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        actions: const [
          PopupMenuButtonWidgetV1(),
        ],
      ),
      drawer: const DrawerV1Widget(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
