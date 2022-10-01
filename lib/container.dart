import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('container'),
      ),
      body: Column(children: const [MyApp(), MyButton()]),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      // 设置对齐方式
      alignment: Alignment.center,
      // 样式
      decoration: BoxDecoration(
          // 圆角
          borderRadius: BorderRadius.circular(10.0),
          //边框
          border: Border.all(color: Colors.red, width: 5),
          // 阴影
          boxShadow: const [
            BoxShadow(
              color: Colors.blue,
              blurRadius: 10,
            )
          ],
          // 渐变背景
          gradient: const LinearGradient(colors: [Colors.green, Colors.blue])),
      // 设置四周边距
      // margin: const EdgeInsets.fromLTRB(10, 20, 10, 20),
      margin: const EdgeInsets.all(20),

      child: const Text(
        'hello hello hello hello hello',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        textDirection: TextDirection.ltr,
        style: TextStyle(fontSize: 30, color: Colors.white),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 40,
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(5)),
      alignment: Alignment.center,
      child: const Text(
        'button',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
