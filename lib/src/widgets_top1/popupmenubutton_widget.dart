import 'package:flutter/material.dart';

import '../core/widgets/PopupMenuButton/popupmenubutton_widget_v1.dart';

class PopupmenubuttonWidget extends StatelessWidget {
  const PopupmenubuttonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Popup menu button Widget'),
        actions: const [
          PopupMenuButtonWidgetV1(),
        ],
      ),
      body: Container(),
    );
  }
}
