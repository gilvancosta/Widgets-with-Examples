import 'package:flutter/material.dart';

class ListviewWidget extends StatelessWidget {
  const ListviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Views Page'),
      ),
      body: ListView.separated(
        itemCount: 100,
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            color: Colors.red,
            height: 2,
            thickness: 10, // altura da divisão
            indent: 10,
            endIndent: 10,
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
              leading: CircleAvatar(
                child: Text('$index'),
              ),
              trailing: const CircleAvatar(
                child: Text('AAA'),
              ),
              title: Text('Item $index'),
              subtitle: const Text('Flutter é'),
              onTap: () {
                Navigator.popAndPushNamed(context, '/images_page'); // Navigator.pop(context);
              });
        },

// --- outra opção sem seprador  ---

/*       body: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          return ListTile(
            //  leading: const Icon(Icons.home),
            leading: CircleAvatar(
              child: Text('$index'),
            ),
            title: Text('Item $index'),
            subtitle: const Text('Flutter é'),
/*             onTap: () {
              Navigator.popAndPushNamed(context, '/images_page');
              // Navigator.pop(context);
            }, */
          );
        },*/
      ),
    );
  }
}
