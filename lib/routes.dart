import 'package:flutter/material.dart';
import 'draw.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // jika ingin mengirim argument
    // final args = settings.arguments;

    switch (settings.name) {
      case '/profil':
        return MaterialPageRoute(builder: (_) => Profil());
      case '/portofolio':
        return MaterialPageRoute(builder: (_) => Portofolio());
      case '/kontak':
        return MaterialPageRoute(builder: (_) => Kontak());
      case '/keterangan':
        return MaterialPageRoute(builder: (_) => Keterangan());
      case '/pengaturan':
        return MaterialPageRoute(builder: (_) => Pengaturan());
      case '/galeri':
        return MaterialPageRoute(builder: (_) => Galeri());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text("Error")),
        body: Center(child: Text('Error page')),
      );
    });
  }
}
