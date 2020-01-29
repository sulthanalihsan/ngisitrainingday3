import 'package:flutter/material.dart';
import 'package:projek_day_3_4/model/model_berita.dart';
import 'package:projek_day_3_4/screens/halaman_webview.dart';

class HalamanDetail extends StatelessWidget {
  Article article;

  HalamanDetail({Key key, this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("detail berita"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.link),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HalamanWebView(article.url)));
              },
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  width: double.infinity,
                  child: Image.network(
                    article.urlToImage,
                    fit: BoxFit.fill,
                  )),
              Text(
                article?.title ?? "tidak ada",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    article?.author ?? " tidak ada",
                  ),
                  Text(article?.publishedAt.toString().substring(0, 11) ??
                      "tidak ada"),
                ],
              ),
              Container(
                child: Text(
                  article.content,
                  textAlign: TextAlign.justify,
                ),
              )
            ],
          ),
        ));
  }
}
