import 'package:flutter/material.dart';
import 'draw.dart';
import 'routes.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    onGenerateRoute: RouteGenerator.generateRoute,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("MyApps"),
          ),
          drawer: DrawerWidget(),
          body: TabBarView(children: <Widget>[
            Home(),
            Body(),
          ]),
        ),
      );
}
