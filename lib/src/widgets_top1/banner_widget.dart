import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {

  const BannerWidget({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Banner Widget'),),
           body: Container(),
       );
  }
}