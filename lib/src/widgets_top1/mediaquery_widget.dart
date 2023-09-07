import 'package:flutter/material.dart';

class MediaqueryWidget extends StatelessWidget {

  const MediaqueryWidget({ super.key });

   @override
   Widget build(BuildContext context) {

    final mediaQuery = MediaQuery.of(context);
    final heightBody = mediaQuery.size.height - mediaQuery.padding.top - mediaQuery.padding.bottom - kToolbarHeight;

    return Scaffold(
      appBar: AppBar(
        title: const Text('MediaQuery Page', style: TextStyle(color: Colors.amber)),
        backgroundColor: Colors.blue[900],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              color: Colors.red,
              width: mediaQuery.size.width * 0.5,
              height: heightBody * 0.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Altura: ${mediaQuery.size.height}'),
                  Text('Largura: ${mediaQuery.size.width}'),
                  Text('Orientação: ${mediaQuery.orientation}'),
                  Text('padding.top: ${mediaQuery.padding.top}'),
                  const Text('appBar: $kToolbarHeight'),
                  Text('bottom: ${mediaQuery.padding.bottom}'),
                ],
              )),
          Container(
            color: Colors.blue,
            width: mediaQuery.size.width,
            height: heightBody * 0.5,
          )
        ],
      ),
    );
  }
}