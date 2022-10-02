import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text('image')),
      body: Container(
        color: Colors.grey[300],
        child: Center(
          child: Column(children: const [
            SizedBox(
              height: 20,
            ),
            MyImage(),
            SizedBox(
              height: 20,
            ),
            ContainerImage(),
            SizedBox(
              height: 20,
            ),
            ClipOvalImage(),
            SizedBox(
              height: 20,
            ),
            LocalImage()
          ]),
        ),
      ),
    ),
  ));
}

class MyImage extends StatelessWidget {
  const MyImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 100,
      color: Colors.blue,
      child:
          Image.network('https://avatars.githubusercontent.com/u/47939250?v=4'),
    );
  }
}

// 使用 Container 实现圆形头像
class ContainerImage extends StatelessWidget {
  const ContainerImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(75.0),
          image: const DecorationImage(
              image: NetworkImage(
                  'https://avatars.githubusercontent.com/u/47939250?v=4'))),
    );
  }
}

// 使用 ClipOval 实现圆形头像
class ClipOvalImage extends StatelessWidget {
  const ClipOvalImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
        child: Image.network(
      'https://avatars.githubusercontent.com/u/47939250?v=4',
      width: 100,
      height: 100,
    ));
  }
}

class LocalImage extends StatelessWidget {
  const LocalImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 100,
      color: Colors.blue,
      child: Image.asset('images/avatar.jpg'),
    );
  }
}
