import 'package:flutter/material.dart';

import '../../constants/popuppenupages.dart';

class PopupMenuButtonWidgetV1 extends StatelessWidget {
  const PopupMenuButtonWidgetV1({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupMenuPages>(onSelected: (PopupMenuPages valueSelected) {
      switch (valueSelected) {
        case PopupMenuPages.container:
          Navigator.pushNamed(context, '/container2');
          break;
     
        default:
      }
    }, itemBuilder: (BuildContext context) {
      return <PopupMenuItem<PopupMenuPages>>[
        const PopupMenuItem<PopupMenuPages>(
          value: PopupMenuPages.container,
          child: Text('Container 2'),
     
        ),
      ];
    });
  }
}
