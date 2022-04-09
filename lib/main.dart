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
        length: 1,
        child: Scaffold(
          backgroundColor: Color(0xff00BCD1),
          appBar: AppBar(
            title: Text("MyApps"),
          ),
          drawer: DrawerWidget(),
          body: TabBarView(children: <Widget>[
            Profil(),
          ]),
        ),
      );
}
