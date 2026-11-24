import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  MyApp({ Key? key}) : super(key: key);

  @override
  _MyApp createState() => _MyApp();

}

class _MyApp extends State {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Exemplo de imagem')),
        body: Center(
          child: Image.network(
            'https://upload.wikimedia.org/wikipedia/commons/8/87/'
            'Google_Chrome_icon_%282011%29.png',
            loadingBuilder: (context, child, progress) {
              if (progress == null) return child;
              return CircularProgressIndicator();
            },
            errorBuilder: (context, error, stackTrace) {
              return Icon(Icons.broken_image);
            },
          ),
        ),
      ),
    );
  }
}