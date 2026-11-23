
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentPage = 0;

  final _pages = const [
    Text('Page 1 - Announcements'),
    Text('Page 2 - Birthdays'),
    Text('Page 3 - Data'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: _pages[_currentPage],
        ),
        bottomNavigationBar: NavigationBar(
          selectedIndex: _currentPage,
          indicatorColor: Colors.red.shade100,
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.announcement),
              label: 'Announcements',
            ),
            NavigationDestination(
              icon: Icon(Icons.cake),
              label: 'Birthdays',
            ),
            NavigationDestination(
              icon: Icon(Icons.cloud),
              label: 'Data',
            ),
          ],
          onDestinationSelected: (index) {
            setState(() {
              _currentPage = index;
            });
          },
        ),
      ),
    );
  }
}
