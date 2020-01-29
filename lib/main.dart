import 'package:flutter/material.dart';
import 'package:projek_day_3_4/screens/halaman_berita.dart';
import 'package:projek_day_3_4/screens/halaman_database.dart';
import 'package:projek_day_3_4/screens/halaman_menu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HalamanMenu.id,
      routes: {
        HalamanMenu.id: (context) => HalamanMenu(),
        HalamanBerita.id: (context) => HalamanBerita(),
        HalamanDatabase.id: (context) => HalamanDatabase()
      },
    );
  }
}
