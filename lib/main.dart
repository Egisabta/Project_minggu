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
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Musikku"),
            // bottom: TabBar(
            //   tabs: [
            //     new Tab(icon: new Icon(Icons.account_circle_outlined), text: "Profil"),
            //     new Tab(icon: new Icon(Icons.account_box_outlined), text: "Portofolio"),
            //     new Tab(icon: new Icon(Icons.mail), text: "Contact"),
            //   ],
            // )
          ),
          drawer: DrawerWidget(),
          body: TabBarView(children: <Widget>[
            // Musik(),
            // Artist(),
            // Recent(),
          ]),
        ),
      );
}
