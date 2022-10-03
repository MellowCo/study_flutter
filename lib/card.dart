import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Card',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Card'),
        ),
        body: const CardBox(),
      ),
    );
  }
}

class CardBox extends StatelessWidget {
  const CardBox({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
            // 阴影颜色
            shadowColor: Colors.red,
            // 阴影距离
            elevation: 50,
            // 边框形状
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: const [
                ListTile(
                  title: Text('张三'),
                  subtitle: Text('高级开发工程师'),
                ),
                Divider(),
                ListTile(
                  title: Text('电话：1375235236'),
                ),
                ListTile(
                  title: Text('地址：等等等等等等等等等等'),
                )
              ],
            ))
      ],
    );
  }
}
