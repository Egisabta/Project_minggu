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

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    currentAccountPicture: ClipOval(
      child: Image(image: AssetImage('assets/images/orang2.jpeg'), fit: BoxFit.cover),
    ),
    otherAccountsPictures: [
      ClipOval(
        child: Image(image: AssetImage('assets/images/orang1.jpg'), fit: BoxFit.cover),
      ),
      ClipOval(
        child: Image(image: AssetImage('assets/images/orang3.jpeg'), fit: BoxFit.cover),
      )
    ],
    accountName: Text('Belajar flutter'),
    accountEmail: Text('tes@flutter.com'),
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
