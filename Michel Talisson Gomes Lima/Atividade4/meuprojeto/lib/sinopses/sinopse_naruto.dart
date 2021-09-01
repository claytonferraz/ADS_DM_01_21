import 'package:flutter/material.dart';

class sinopsenaruto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Boruto - Naruto the Movie"),
        ),
        body: Container(
          padding: EdgeInsets.all(23.0),
          child: Column(
            children: [
              Image.network(
                  'https://animetv.biz/wp-content/uploads/2020/08/1596588006-78280.jpg'),
              Text(
                  'Vários anos após o fim da Guerra Shinobi, o filho de Naruto, Boruto, está prestes a entrar nos exames Chûnin ao lado de Sarada Uchiha e do misterioso Mitsuki.',
                  style: TextStyle(fontSize: 20)),
            ],
          ),
        ));
  }
}
