import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AspectRatio',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AspectRatio'),
        ),
        body: const Center(
          child: AspectRatioBox(),
        ),
      ),
    );
  }
}

class AspectRatioBox extends StatelessWidget {
  const AspectRatioBox({super.key});

  @override
  Widget build(BuildContext context) {
    // 设置 16 : 9 container
    return AspectRatio(
        aspectRatio: 16 / 9,
        child: Container(
          color: Colors.blue,
        ));
  }
}
