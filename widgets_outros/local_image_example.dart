import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  MyApp({ Key? key}) : super(key: key);

  @override
  _MyApp createState() => _MyApp();

}

class _MyApp extends State {

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Exemplo de imagem'),
        ),
        body: Center(
            child:
            Image.asset("img/dart.png")
        ),
      ),
    );
  }

}