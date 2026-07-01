import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  Future<void> _showIt(BuildContext context) async {
    final escolha = await showDialog<String>(
      context: context,
      builder: (dialogContext) {
        return SimpleDialog(
          title: const Text("What's your favorite food?"),
          children: [
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(dialogContext, "broccoli");
              },
              child: const Text("Broccoli"),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(dialogContext, "steak");
              },
              child: const Text("Steak"),
            ),
          ],
        );
      },
    );

    print(escolha);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showIt(context),
          child: const Text("Show it"),
        ),
      ),
    );
  }
}