import 'package:flutter/material.dart';

class sinopseavatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Avatar - A Lenda de AANG"),
      ),
      body: Container(
        padding: EdgeInsets.all(23.0),
        child: Column(
          children: [
            Image.network(
                'https://rollingstone.uol.com.br/media/_versions/avatar-a-lenda-de-aang-reproducao_widelg.jpg'),
            Text(
                'Aang é um menino de apenas 12 anos que descobre sero Avatar, grande mestre responsável por garantir o equilíbrio entre os quatroelementos - água, terra, fogo e ar - e suas respectivas nações representantes,mantendo o planeta em segurança.',
                style: TextStyle(fontSize: 20))
          ],
        ),
      ),
    );
  }
}
