import 'package:flutter/material.dart';
import 'package:meuprojeto/home_page.dart';
import 'package:meuprojeto/sinopses/sinopseAvatar.dart';
import 'package:meuprojeto/sinopses/sinopse_bob_esponja.dart';
import 'package:meuprojeto/sinopses/sinopse_glee.dart';
import 'package:meuprojeto/sinopses/sinopse_naruto.dart';

import 'login_Page.dart';

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(builder: (BuildContext context, child) {
      return MaterialApp(
        theme: ThemeData(
            primarySwatch: Colors.green, brightness: Brightness.light),
        initialRoute: '/',
        routes: {
          '/': (context) => LoginPage(),
          '/home': (context) => HomePage(),
          '/sinopsebobesponja': (context) => sinopsebobesponja(),
          '/sinopseglee': (context) => sinopseglee(),
          '/sinopsenaruto': (context) => sinopsenaruto(),
          '/sinopseavatar': (context) => sinopseavatar(),
        },
      );
    });
  }
}
