import 'package:flutter/material.dart';
import 'package:flutter_conexion_sqllite/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home':(BuildContext context)=> HomeScrem()},
        theme: ThemeData.dark(),
    );
  }
}


