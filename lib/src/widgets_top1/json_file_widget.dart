import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import '../models/cidade.dart';

class JsonFileWidget extends StatefulWidget {

  const JsonFileWidget({ super.key });

  @override
  State<JsonFileWidget> createState() => _JsonFileWidgetState();
}

class _JsonFileWidgetState extends State<JsonFileWidget> {

List<Cidade> cidades = [];

  @override
  void initState() {
    super.initState();
    _loadCidades();
  }

  Future<void> _loadCidades() async {
    final cidadesjson = await rootBundle.loadString('assets/json/cidades.json');
    setState(() {
      var cidadesList = json.decode(cidadesjson) as List<dynamic>;
      cidades = cidadesList.map((e) => Cidade.fromMap(e as Map<String, dynamic>)).toList();
    });
  }


   @override
   Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: const Text('Json Cidades'),
      ),
      body: ListView.builder(
        itemCount: cidades.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(cidades[index].cidade),
            subtitle: Text(cidades[index].estado),
          );
        },
      ),
    );
  }
}