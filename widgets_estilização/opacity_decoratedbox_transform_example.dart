import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Playground",
      home: Scaffold(
        body: Column(
          children: [
            Spacer(),
            Opacity(
                opacity: 0.25,
                child: const Text(
                  'Texto opaco',
                ),
              ),
            Spacer(),
            Center(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.black, Colors.red],
                    
                  ),
                ),
                child: Container(width: 100, height: 100,
                  child: Text("Hello", 
                              style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
            Spacer(),
            Center(
              child: Container(
                color: Colors.yellow,
                child: Transform.rotate(
                  angle: -0.2,
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    color: Colors.orange,
                    child: Text("Transformação"),
                  ),
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}