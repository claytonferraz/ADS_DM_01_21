import 'package:flutter/material.dart';

class sinopsebobesponja extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Bob Esponja - O Filme"),
        ),
        body: Container(
            padding: EdgeInsets.all(23.0),
            child: Column(children: [
              Image.network(
                  'https://br.web.img3.acsta.net/c_310_420/medias/nmedia/18/90/53/98/20101535.jpg'),
              Text(
                  'Bob Esponja e seu amigo Patrick, uma estrela do mar, embarcam em uma missão para limpar o nome do Sr. Sirigueijo, o proprietário do restaurante..',
                  style: TextStyle(fontSize: 20))
            ])));
  }
}
