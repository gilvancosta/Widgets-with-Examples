import 'dart:ffi';

import 'package:flutter/material.dart';

class DrawerV1Widget extends StatelessWidget {
  const DrawerV1Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountEmail: const Text("user2023@gmail.com"),
            accountName: const Text("GitHub"),
            currentAccountPicture: CircleAvatar(
              minRadius: 30,
              child: Image.network('https://i.pravatar.cc/300'),
            ),
          ),
          // -- widget_page --
          ListTile(
              leading: const Icon(Icons.calculate_rounded),
              title: const Text('Container 1'),
              onTap: () {
                Navigator.popAndPushNamed(context, '/container1-widget');
                // Navigator.pop(context);
              }),
          ListTile(
              leading: const Icon(Icons.calculate_rounded),
              title: const Text('Images'),
              onTap: () {
                Navigator.popAndPushNamed(context, '/images-widget');
                // Navigator.pop(context);
              }),
          ListTile(
              leading: const Icon(Icons.calculate_rounded),
              title: const Text('Fontes'),
              onTap: () {
                Navigator.popAndPushNamed(context, '/fontes-page');
                // Navigator.pop(context);
              }),
          ListTile(
              leading: const Icon(Icons.calculate_rounded),
              title: const Text('Popup Menu Button'),
              onTap: () {
                Navigator.popAndPushNamed(context, '/popupmenubutton');
                // Navigator.pop(context);
              }),
          // -- images_page --
          ListTile(
              leading: const Icon(Icons.calculate_rounded),
              title: const Text('Rows Columns'),
              onTap: () {
                Navigator.popAndPushNamed(context, '/rows_columns');
                // Navigator.pop(context);
              }),

          ListTile(
              leading: const Icon(Icons.calculate_rounded),
              title: const Text('Media Query'),
              onTap: () {
                Navigator.popAndPushNamed(context, '/mediaquery');
                // Navigator.pop(context);
              }),

          ListTile(
              leading: const Icon(Icons.calculate_rounded),
              title: const Text('Device Preview'),
              onTap: () {
                Navigator.popAndPushNamed(context, '/device_preview');
                // Navigator.pop(context);
              }),
          // -- images_page --
          ListTile(
              leading: const Icon(Icons.calculate_rounded),
              title: const Text('Layout builder'),
              onTap: () {
                Navigator.popAndPushNamed(context, '/layoutbuilder');
                // Navigator.pop(context);
              }),

          ListTile(
              leading: const Icon(Icons.calculate_rounded),
              title: const Text('Botoes'),
              onTap: () {
                Navigator.popAndPushNamed(context, '/botoes');
                // Navigator.pop(context);
              }),

          ListTile(
              leading: const Icon(Icons.calculate_rounded),
              title: const Text('Listview '),
              onTap: () {
                Navigator.popAndPushNamed(context, '/listview');
                // Navigator.pop(context);
              }),
          // -- images_page --
          ListTile(
              leading: const Icon(Icons.calculate_rounded),
              title: const Text('Dialogs'),
              onTap: () {
                Navigator.popAndPushNamed(context, '/dialogs');
                // Navigator.pop(context);
              }),

          ListTile(
              leading: const Icon(Icons.calculate_rounded),
              title: const Text('Plataforma'),
              onTap: () {
                Navigator.popAndPushNamed(context, '/plataforma');
                // Navigator.pop(context);
              }),
        ],
      ),
    );
  }
}
