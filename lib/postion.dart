import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'postion',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('postion'),
        ),
        body: const Center(
          child: PostionStock(),
        ),
      ),
    );
  }
}

class BaseStock extends StatelessWidget {
  const BaseStock({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      // 设置对齐方式
      alignment: Alignment.center,
      children: [
        Container(
          width: 200,
          height: 400,
          color: Colors.blue,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.amber,
        ),
        const Text('hello flutter')
      ],
    );
  }
}

class PostionStock extends StatelessWidget {
  const PostionStock({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 600,
      color: Colors.cyan,
      // Stack 相对于外部容器定位，没有外部容器，相对于整个容器定位
      child: Stack(
        // 设置对齐方式
        alignment: Alignment.bottomLeft,
        children: [
          Positioned(
            top: 10,
            left: 10,
            child: Container(
              width: 200,
              height: 400,
              color: Colors.blue,
            ),
          ),
          Positioned(
            bottom: 30,
            right: 100,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.amber,
            ),
          ),
          const Positioned(top: 100, right: 100, child: Text('hello flutter'))
        ],
      ),
    );
  }
}
