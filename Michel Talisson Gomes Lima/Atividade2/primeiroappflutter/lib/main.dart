import 'package:flutter/material.dart';
import 'package:primeiroappflutter/routes/app_routes.dart';
import 'package:primeiroappflutter/views/user_form.dart';
import 'package:primeiroappflutter/views/user_list.dart';
import 'package:provider/provider.dart';
import 'package:primeiroappflutter/provider/users.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Users(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity),
        routes: {
          AppRoutes.HOME: (_) => UserList(),
          AppRoutes.USER_FORM: (_) => UserForm()
        },
      ),
    );
  }
}
