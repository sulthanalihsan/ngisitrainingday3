import 'package:flutter/material.dart';

class HalamanDatabase extends StatelessWidget {
  static const String id = 'HALAMAN_DATABASE';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman SQLite'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {},
          )
        ],
      ),
      body: Text('Ini halaman databaseasdasds'),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){},
      ),
    );
  }
}
