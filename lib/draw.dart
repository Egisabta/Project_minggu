import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerHeader(),
          _drawerItem(icon: Icons.folder, text: 'MyFolder', onTap: () => print("Tap My File")),
          _drawerItem(icon: Icons.group, text: 'Shared With Me', onTap: () => print("Tab To Shared")),
          _drawerItem(icon: Icons.access_time, text: 'Recent', onTap: () => print("Tab to recent menu")),
          _drawerItem(icon: Icons.delete, text: 'deleted', onTap: () => print("Tab to deleted menu")),
          Divider(height: 20.0, thickness: 1),
          Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
              child: Text(
                "label",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                ),
              )),
          _drawerItem(icon: Icons.bookmark, text: "finally", onTap: () => print("Tab to family Menu")),
        ],
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BelajarAppBar(),
    );
  }
}

class BelajarAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("MusikSeru",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      )),
                  background: Image(
                    image: AssetImage('assets/image/download.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    labelColor: Colors.black87,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      new Tab(icon: new Icon(Icons.audiotrack), text: "Songs"),
                      new Tab(icon: new Icon(Icons.access_alarm), text: "History"),
                      new Tab(icon: new Icon(Icons.album), text: "Albums"),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(children: <Widget>[
            BelajarListView(),
            BelajarListView(),
            BelajarListView(),
          ]),
        ),
      ),
    );
  }
}

class BelajarListView extends StatelessWidget {
  final List bulan = [
    "Justin bieber",
    "Michael jackson",
    "Nirvana",
    "MLTR",
    "Queen",
    "Bon jovi",
    "Aerosmith",
    "The chainsmokers",
    "Metallica"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
                title: Text(bulan[index], style: TextStyle(fontSize: 20)),
                subtitle: Text('album dari ' + bulan[index]),
                leading: CircleAvatar(
                  child: Text(bulan[index][0], // ambil karakter pertama text
                      style: TextStyle(fontSize: 20)),
                )),
          );
        },
        itemCount: bulan.length,
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    currentAccountPicture: ClipOval(
      child: Image(image: AssetImage('assets/foto/boruto.jpg'), fit: BoxFit.cover),
    ),
    accountName: Text('Egi Sabta Hiro'),
    accountEmail: Text('egisabta76@gmail.com'),
  );
}

Widget _drawerItem({required IconData icon, required String text, required GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}
