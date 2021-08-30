import 'package:flutter/material.dart';
import 'package:aula_maiker/app_controller.dart';
import 'home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (BuildContext context, child) {
          return MaterialApp(
              theme: ThemeData(
                  primarySwatch: Colors.green,
                  brightness: AppController.instance.isDark
                      ? Brightness.dark
                      : Brightness.light),
              home: HomePage());
        });
  }
}
