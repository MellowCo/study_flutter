import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('ListView'),
          ),
          body: BuilderList()),
    );
  }
}

// 垂直列表
class VerticalList extends StatelessWidget {
  const VerticalList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ListTile(
          leading: Icon(Icons.offline_pin_rounded),
          title: Text('xxx'),
          trailing: Icon(Icons.chevron_right_rounded),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.access_alarms_sharp),
          title: Text('xxx'),
          trailing: Icon(Icons.chevron_right_rounded),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.accessible),
          title: Text('xxx'),
          trailing: Icon(Icons.chevron_right_rounded),
        ),
        Divider()
      ],
    );
  }
}

// 垂直图文列表
class PicVerticalList extends StatelessWidget {
  const PicVerticalList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Image.network(
              'https://avatars.githubusercontent.com/u/47939250?v=4'),
          title: const Text('xxx'),
          subtitle: const Text('ddddddddddddddddddddddddddddddddddddddddddddd'),
        ),
        const Divider(),
        ListTile(
          leading: Image.network(
              'https://avatars.githubusercontent.com/u/47939250?v=4'),
          title: const Text('xxx'),
          subtitle: const Text(
              'ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd'),
          trailing: Image.network(
              'https://avatars.githubusercontent.com/u/47939250?v=4'),
        ),
        const Divider(),
        Container(
          height: 200,
          decoration: const BoxDecoration(
              color: Colors.red,
              image: DecorationImage(
                  image: NetworkImage(
                      'https://avatars.githubusercontent.com/u/47939250?v=4'))),
        ),
        const Center(
          child: Text(
            'xxx',
            style: TextStyle(fontSize: 30),
          ),
        )
      ],
    );
  }
}

// 水平列表
class HorizontalList extends StatelessWidget {
  const HorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 300,
            height: 100,
            color: Colors.amber,
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                  child: Image.network(
                      'https://avatars.githubusercontent.com/u/47939250?v=4'),
                ),
                const Text(
                  '图片',
                  style: TextStyle(fontSize: 30),
                )
              ],
            ),
          ),
          Container(
            width: 300,
            height: 200,
            color: Colors.black,
          ),
          Container(
            width: 300,
            height: 200,
            color: Colors.green,
          ),
          Container(
            width: 300,
            height: 200,
            color: Colors.yellow,
          )
        ],
      ),
    );
  }
}

// 动态列表
class ForList extends StatelessWidget {
  const ForList({super.key});

  List<Widget> _initList() {
    List<Widget> list = [];

    for (var i = 0; i < 20; i++) {
      list.add(ListTile(title: Text('标题 - $i')));
    }

    return list;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _initList(),
    );
  }
}

// 动态列表
class BuilderList extends StatelessWidget {
  final List<String> list = [];

  BuilderList({super.key}) {
    for (var i = 0; i < 20; i++) {
      list.add('data - $i');
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(list[index]),
        );
      },
    );
  }
}
