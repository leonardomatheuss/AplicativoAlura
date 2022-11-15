import 'package:flutter/material.dart';
import 'package:projeto_perguntas/Task.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(
            leading: Container(),
            title: Text('Tarefas'),
          ),
          body: AnimatedOpacity(
            opacity: opacidade ? 1 : 0,
            duration: Duration(milliseconds: 800),
            child: ListView(children: [
              Task(
                  'Aprender Flutter',
                  'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
                  3),
              Task(
                  'Aprender Dart',
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Dart-logo.png/768px-Dart-logo.png',
                  2),
              Task(
                  'Aprender Programar',
                  'https://www.hostinger.com.br/tutoriais/wp-content/uploads/sites/12/2018/05/20-sites-para-aprender-como-programar-de-gra%C3%A7a.png',
                  1),
              Task(
                  'Aprender Javascript',
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Unofficial_JavaScript_logo_2.svg/1200px-Unofficial_JavaScript_logo_2.svg.png',
                  5),
              Task(
                  'Aprender Python',
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Python-logo-notext.svg/800px-Python-logo-notext.svg.png',
                  3),
            ]),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                opacidade = !opacidade;
              });
            },
            child: Icon(Icons.remove_red_eye),
          )),
    );
  }
}



