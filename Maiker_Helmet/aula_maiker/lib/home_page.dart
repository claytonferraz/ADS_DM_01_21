import 'package:aula_maiker/app_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;
  bool isDark = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Aula Maiker'),
      ),
      body: Center(
        child: CustomSwitch(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() => counter++);
        },
        child: Icon(Icons.add_circle),
      ),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDark,
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
    );
  }
}
