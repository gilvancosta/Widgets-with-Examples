import 'package:flutter/material.dart';

class Stack2Widget extends StatelessWidget {
  const Stack2Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack 2'),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://www.daninoce.com.br/wp-content/uploads/2017/11/o-que-voce-precisa-saber-antes-de-ir-a-nova-york-dani-noce-imagem-destaque-960x625.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.transparent, Colors.black54],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          const Positioned(
            left: 16,
            right: 16,
            bottom: 48,
            child: Card(
              elevation: 12,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Nova York',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                      '"A cidade que nunca dorme" Além de ser chamada de “Big Apple”, a cidade de Nova York é conhecida como “A cidade que nunca dorme”. Semelhante a Los Angeles, Califórnia , a cidade de Nova York está repleta de atrações de entretenimento repletas de ação.'),
                  Text('Estátua da Liberdade'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
