import 'package:flutter/material.dart';
import 'package:projeto_perguntas/screens/form_screen.dart';
import 'screens/initial_screen.dart';



void main() {
  runApp(  MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({super.key}) ;

  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FormScreen() ,
    );
  }
}


