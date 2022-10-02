import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: const FlexBox(),
      ),
    );
  }
}

class ColumnPage extends StatelessWidget {
  const ColumnPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black12,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          IconContainer(Icons.home),
          IconContainer(
            Icons.search,
            color: Colors.yellow,
          ),
          IconContainer(
            Icons.ac_unit_sharp,
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
}

class RowBox extends StatelessWidget {
  const RowBox({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black12,
      child: Row(
        //外部没有Container 行是自适应的
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconContainer(Icons.home),
          IconContainer(
            Icons.search,
            color: Colors.yellow,
          ),
          IconContainer(
            Icons.ac_unit_sharp,
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
}

class FlexBox extends StatelessWidget {
  const FlexBox({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      children: [
        Expanded(
          flex: 1,
          child: IconContainer(Icons.home), //这个元素设置宽度是没有效果的
        ),
        Expanded(
          flex: 2,
          child: IconContainer(
            Icons.ac_unit_sharp,
            color: Colors.orange,
          ),
        ),
      ],
    );
  }
}

//自定义IconContainer
class IconContainer extends StatelessWidget {
  Color color;
  IconData icon;
  IconContainer(this.icon, {Key? key, this.color = Colors.red})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 100,
      width: 100,
      color: color,
      child: Icon(icon, color: Colors.white, size: 28),
    );
  }
}
