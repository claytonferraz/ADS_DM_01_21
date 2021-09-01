import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("Catálogo de Filmes"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(23.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              myCardWidget(
                  meuIcone: Icons.local_movies,
                  meuTexto: "Avatar",
                  subtitulo: 'A lenda de Aang',
                  rota: '/sinopseavatar'),
              myCardWidget(
                  meuIcone: Icons.local_movies,
                  meuTexto: "Bob Esponja",
                  subtitulo: "O Filme",
                  rota: '/sinopsebobesponja'),
              myCardWidget(
                  meuIcone: Icons.local_movies,
                  meuTexto: "Glee 3D",
                  subtitulo: "O Filme",
                  rota: '/sinopseglee'),
              myCardWidget(
                  meuIcone: Icons.local_movies,
                  meuTexto: "Boruto",
                  subtitulo: "Naruto the Movie",
                  rota: '/sinopsenaruto'),
            ],
          ),
        ),
      ),
    );
  }
}

class myCardWidget extends StatelessWidget {
  // iniciando construtor
  myCardWidget({this.meuIcone, this.meuTexto, this.rota, this.subtitulo});
  // definindo variaveis a usar no Card
  final IconData meuIcone;
  final String subtitulo;
  final String meuTexto;
  final String rota;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Icon(meuIcone, size: 40.0, color: Colors.grey),
              title: Text(
                meuTexto,
                style: TextStyle(fontSize: 20.0),
              ),
              subtitle: Text(this.subtitulo),
            ),
            ButtonTheme(
              child: ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: const Text('Votar'),
                    key: Key('1'),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/');
                    },
                  ),
                  FlatButton(
                    child: const Text('Sinopse'),
                    onPressed: () {
                      Navigator.of(context).pushNamed(this.rota);
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
