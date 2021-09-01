import 'package:flutter/material.dart';

class sinopseglee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Glee 3D: O Filme"),
      ),
      body: Container(
          padding: EdgeInsets.all(23.0),
          child: Column(children: [
            Image.network(
                "https://upload.wikimedia.org/wikipedia/pt/a/a2/Glee_3D_Concert_Movie.jpg"),
            Text(
                'A turnê Glee Live! In Concert! mostra os números musicais mais aclamados pelo público. Enquanto Rachel, Finn, Quinn, Kurt e companhia revelam seu talento, o filme acompanha também a vida de alguns fãs da série.',
                style: TextStyle(fontSize: 20))
          ])),
    );
  }
}
