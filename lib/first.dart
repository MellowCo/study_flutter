import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text(
          'hello flutter',
          textDirection: TextDirection.ltr,
        ),
      ),
      body: const MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'hello flutter',
        textDirection: TextDirection.ltr,
        style: TextStyle(color: Color.fromRGBO(111, 222, 333, 1), fontSize: 40),
      ),
    );
  }
}
