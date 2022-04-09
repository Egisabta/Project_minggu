import 'package:flutter/material.dart';
import 'draw.dart';
import 'routes.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    onGenerateRoute: RouteGenerator.generateRoute,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
              title: Text("Musikku"),
              bottom: TabBar(
                tabs: [
                  new Tab(icon: new Icon(Icons.audiotrack), text: "music"),
                  new Tab(icon: new Icon(Icons.group), text: "artist"),
                  new Tab(icon: new Icon(Icons.access_time), text: "recent"),
                ],
              )),
          drawer: DrawerWidget(),
          body: TabBarView(children: <Widget>[
            Musik(),
            Artist(),
            Recent(),
          ]),
        ),
      );
}
