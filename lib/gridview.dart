import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'grid view',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('grid view'),
        ),
        body: GridBuilder(),
      ),
    );
  }
}

class GridCount extends StatelessWidget {
  const GridCount({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      // 一行显示几个
      crossAxisCount: 3,
      children: const [
        Icon(Icons.access_alarms_rounded),
        Icon(Icons.baby_changing_station_sharp),
        Icon(Icons.cabin),
        Icon(Icons.label_important_outlined),
        Icon(Icons.offline_pin_outlined),
        Icon(Icons.wb_sunny_rounded),
      ],
    );
  }
}

class GridExtent extends StatelessWidget {
  const GridExtent({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      // 单个grid最大长度
      maxCrossAxisExtent: 200,
      children: const [
        Icon(Icons.access_alarms_rounded),
        Icon(Icons.baby_changing_station_sharp),
        Icon(Icons.cabin),
        Icon(Icons.label_important_outlined),
        Icon(Icons.offline_pin_outlined),
        Icon(Icons.wb_sunny_rounded),
      ],
    );
  }
}

class GridBuilder extends StatelessWidget {
  final List<String> list = [];

  GridBuilder({super.key}) {
    for (var i = 0; i < 20; i++) {
      list.add('data - $i');
    }
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: list.length,
      // 控制 count 布局
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          // 显示3个
          crossAxisCount: 3,
          // 水平间距
          crossAxisSpacing: 20,
          // 垂直间距
          mainAxisSpacing: 10,
          // 长宽比
          childAspectRatio: 0.8),
      itemBuilder: (context, index) {
        return Container(
          alignment: Alignment.center,
          color: Colors.blue,
          child: Text(list[index]),
        );
      },
    );
  }
}
