import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:projek_day_3_4/model/model_berita.dart';
import 'package:projek_day_3_4/ui/ui_berita.dart';

class HalamanBerita extends StatefulWidget {
  static const String id = "HALAMAN_BERITA";

  @override
  _HalamanBeritaState createState() => _HalamanBeritaState();
}

class _HalamanBeritaState extends State<HalamanBerita> {
  List listBerita;
  bool loading;

  fetchDataBerita() async {
    loading = true;

    String url =
        'https://newsapi.org/v2/top-headlines?country=id&apiKey=fae1bb2b32ec414c91e263a2d35a8e98';
    var response = await http.get(url);

    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);

      ModelBerita dataBerita = ModelBerita.fromJson(json);

      setState(() {
        listBerita = dataBerita.articles;
        loading = false;
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchDataBerita();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Berita'),
      ),
      body: loading == true
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              padding: EdgeInsets.all(10.0),
              itemCount: listBerita.length,
              itemBuilder: (context, index) {
                Article itemArticle = listBerita[index];

                return UIBerita.itemBerita(context,itemArticle);
              },
            ),
    );
  }
}
