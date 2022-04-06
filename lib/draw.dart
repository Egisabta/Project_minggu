import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerHeader(),
          _drawerItem(
              icon: (Icons.audiotrack),
              text: 'music',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(0);
                Navigator.pop(context);
              }),
          _drawerItem(
              icon: (Icons.group),
              text: 'Artist',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(1);
                Navigator.pop(context);
              }),
          _drawerItem(
              icon: (Icons.access_time),
              text: 'Recent',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(2);
                Navigator.pop(context);
              }),
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

class Artist extends StatelessWidget {
  final List artist = [
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
                title: Text(artist[index], style: TextStyle(fontSize: 20)),
                subtitle: Text('album dari ' + artist[index]),
                leading: CircleAvatar(
                  child: Text(artist[index][0], // ambil karakter pertama text
                      style: TextStyle(fontSize: 20)),
                )),
          );
        },
        itemCount: artist.length,
      ),
    );
  }
}

class Musik extends StatelessWidget {
  final List judul = [
    "baby",
    "smooth criminal",
    "smells like teen spirit",
    "thats way you go",
    "killer queen",
    "always",
    "i dont wanna miss a thing",
    "i want something just like this",
    "the unforgiven"
  ];
  final List musik = [
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
                title: Text(judul[index], style: TextStyle(fontSize: 20)),
                subtitle: Text('album dari ' + musik[index]),
                leading: CircleAvatar(
                  child: Text(judul[index][0], // ambil karakter pertama text
                      style: TextStyle(fontSize: 20)),
                )),
          );
        },
        itemCount: judul.length,
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
      child: Image(image: AssetImage('assets/foto/user.png'), fit: BoxFit.cover),
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
