import 'package:flutter/material.dart';
import 'package:watcherapp/pages/welcome/welcome.dart';
import 'package:watcherapp/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: staticRoutes,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: WelcomePage(),
    );
  }
}
