import 'package:flutter/material.dart';

class CircleAvatarWidget extends StatelessWidget {
  const CircleAvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circle Avatar'),
      ),
      body: const Row(children: [
        ImageAvatar(urlImage: 'https://static.wikia.nocookie.net/battlefordreamisland/images/4/4b/Mr_beans_holiday_ver2.jpg/revision/latest?cb=20181111142900'),
        ImageAvatar(urlImage: 'https://pbs.twimg.com/profile_images/492053012957786113/uAGBiIfx_400x400.png'),
      ]),
    );
  }
}

class ImageAvatar extends StatelessWidget {
  final String urlImage;

  const ImageAvatar({super.key, required this.urlImage});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          // CIRCULO
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: <Color>[Colors.red, Colors.yellow, Colors.blue],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(50),
            // shape: BoxShape.circle,
            color: Colors.red,
          ),
        ),
        // ignore: sized_box_for_whitespace
        Container(
          // IMAGEM
          width: 100,
          height: 100,
          padding: const EdgeInsets.all(5),
          child: CircleAvatar(
            backgroundImage: NetworkImage(urlImage),
          ),
        ),
        SizedBox(
          // TEXTO
          width: 100,
          height: 100,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                padding: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: const Text(
                  'AO VIVO',
                  style: TextStyle(
                    fontSize: 8,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                )),
          ),
        )
      ],
    );
  }
}
