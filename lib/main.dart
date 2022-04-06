import 'package:flutter/material.dart';
import 'draw.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Scaffold(
          appBar: AppBar(
            title: Text(text: Center "toko Biru"),
          ),
          drawer: DrawerWidget(),
          body: Center(child: Text('Belajar Navigation Drawer di Flutter', style: TextStyle(fontSize: 20))),
        ),
      ),
    );
  }
}
