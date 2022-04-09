import 'package:flutter/cupertino.dart';
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
              icon: (Icons.account_circle_outlined),
              text: 'Profil',
              onTap: () {
                Navigator.pushNamed(context, '/profil');
              }),
          _drawerItem(
              icon: (Icons.account_box_outlined),
              text: 'Portofolio',
              onTap: () {
                Navigator.pushNamed(context, '/portofolio');
              }),
          _drawerItem(
              icon: (Icons.mail_outlined),
              text: 'Kontak',
              onTap: () {
                Navigator.pushNamed(context, '/kontak');
              }),
          Divider(height: 20.0, thickness: 3),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
          ),
          _drawerItem(icon: Icons.wysiwyg, text: "Keterangan", onTap: () => print("dalam tahapan pengembangan")),
          _drawerItem(icon: Icons.app_settings_alt_outlined, text: "Pengaturan", onTap: () => print("dalam tahapan pengembangan")),
          _drawerItem(icon: Icons.image_outlined, text: "Galeri", onTap: () => print("dalam tahapan pengembangan")),
        ],
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00BCD1),
      body: Align(
        child: Text('Ini Adalah Background'),
        alignment: Alignment.center,
      ),
    );
  }
}

class Profil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text('Nama : Egi Sabta Hiro'),
          Text('Kelas: 2A'),
          Text('NIM  : 362055401002'),
          Text('Prodi: Teknik Informatika'),
        ],
      ),
    );
  }
}

class Portofolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portofolio'),
      ),
      body: Align(
        alignment: Alignment.topLeft,
        child: Container(
          width: 100,
          height: 100,
          color: Colors.blue,
        ),
      ),
    );
  }
}

class Kontak extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kontak'),
      ),
      body: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          width: 200,
          height: 200,
          color: Colors.blue,
        ),
      ),
    );
  }
}

// class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
//   _SliverAppBarDelegate(this._tabBar);

//   final TabBar _tabBar;

//   @override
//   double get minExtent => _tabBar.preferredSize.height;
//   @override
//   double get maxExtent => _tabBar.preferredSize.height;

//   @override
//   Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
//     return new Container(
//       child: _tabBar,
//     );
//   }

//   @override
//   bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
//     return false;
//   }
// }

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
