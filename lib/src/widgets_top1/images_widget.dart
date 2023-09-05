import 'package:flutter/material.dart';

class ImagesWidget extends StatelessWidget {
  const ImagesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Images Widget',
          style: TextStyle(fontFamily: 'Tourney'),
        ),
        backgroundColor: Colors.red[900],
        actions: const [Icon(Icons.add_link_outlined)],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //  const SizedBox(height: 20),
            Container(
              width: 200,
              height: 200,
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/pexels-jill-wellington-9588429.jpg'), fit: BoxFit.cover),
              ),
              child: Center(
                child: Text(
                  'texto sobre a Paisagem',
                  style: TextStyle(
                    backgroundColor: Colors.white.withOpacity(0.5),
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            //   const SizedBox(height: 20),
            Container(
              width: 200,
              height: 200,
              color: Colors.yellow,
              child: Image.network(
                // Image.network mais otimizado
                'https://atacadaoeletronicos.com.br/wp-content/uploads/2023/01/200x80.png',
                fit: BoxFit.fill,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
            //   const SizedBox(height: 20),
            Container(
              width: 200,
              height: 200,
              child: Image.asset(
                'assets/images/pexels-lisa-fotios-1092644.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
