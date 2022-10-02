import 'package:flutter/material.dart';
import 'MyIcon.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text('Icon')),
      body: const Center(
        child: MyIcon(),
      ),
    ),
  ));
}

class MyIcon extends StatelessWidget {
  const MyIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: const [
      Icon(Icons.account_circle, size: 40, color: Colors.blue),
      SizedBox(
        height: 20,
      ),
      Icon(Icons.fingerprint, size: 40, color: Colors.blue),
      SizedBox(
        height: 20,
      ),
      Icon(MyIcons.bianjirili, size: 40, color: Colors.blue),
      SizedBox(
        height: 20,
      ),
      Icon(MyIcons.baoxiangui, size: 40, color: Colors.blue),
      SizedBox(
        height: 20,
      )
    ]);
  }
}
