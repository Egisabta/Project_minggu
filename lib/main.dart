import 'package:flutter/material.dart';
import 'draw.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.green),
    title: "what",
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
              title: Text("Apaan"),
              bottom: TabBar(
                tabs: [
                  new Tab(icon: new Icon(Icons.audiotrack), text: "music"),
                  new Tab(icon: new Icon(Icons.audiotrack), text: "music"),
                  new Tab(icon: new Icon(Icons.audiotrack), text: "music"),
                ],
              )),
          drawer: DrawerWidget(),
          body: TabBarView(children: <Widget>[
            BelajarListView(),
            BelajarListView(),
            BelajarListView(),
          ]),
        ),
      );
}
