import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
          _drawerItem(
              icon: Icons.wysiwyg,
              text: "Keterangan",
              onTap: () {
                Navigator.pushNamed(context, '/keterangan');
              }),
          _drawerItem(
              icon: Icons.app_settings_alt_outlined,
              text: "Pengaturan",
              onTap: () {
                Navigator.pushNamed(context, '/pengaturan');
              }),
          _drawerItem(
              icon: Icons.image_outlined,
              text: "Galeri",
              onTap: () {
                Navigator.pushNamed(context, '/galeri');
              }),
        ],
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0000000),
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
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          ClipOval(
            child: Image.asset('assets/foto/user.png'),
          ),
          Text(
            'Nama :Egi Sabta Hiro',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text('Kelas : 2A',style: TextStyle(fontWeight: FontWeight.bold),),
          Text('NIM  : 362055401002'style: TextStyle(fontWeight: FontWeight.bold),),
          Text('Prodi : Teknik Informatika'style: TextStyle(fontWeight: FontWeight.bold),),
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
      body: Column(
        children: <Widget>[
          Container(
            child: Image.asset(''),
            margin: EdgeInsets.all(10),
            width: 200,
            height: 150,
            color: Colors.blue,
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: 200,
            height: 150,
            color: Colors.blue,
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: 200,
            height: 150,
            color: Colors.blue,
          ),
        ],
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

class Keterangan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Keterangan'),
      ),
      body: Align(
        child: Text('Keterangan Belum diisi'),
        alignment: Alignment.center,
      ),
    );
  }
}

class Pengaturan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('pengaturan'),
      ),
      body: Column(
        children: <Widget>[
          Text('Information Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'),
        ],
      ),
    );
  }
}

class Galeri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('galeri'),
      ),
      body: Align(
        child: Text('Ini Adalah Background'),
        alignment: Alignment.center,
      ),
    );
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
