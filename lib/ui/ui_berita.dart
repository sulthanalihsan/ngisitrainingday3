import 'package:flutter/material.dart';
import 'package:projek_day_3_4/model/model_berita.dart';
import 'package:projek_day_3_4/screens/halaman_berita_detail.dart';

class UIBerita {


  static Widget itemBerita(BuildContext context, Article article) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
          builder: (context)=>HalamanDetail(article: article,)
        ));
      },
      child: Card(
        elevation: 5.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
              child: Image.network(article.urlToImage),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                article.title ?? "Tidak ada data",
                style: TextStyle(fontSize: 15.0, fontStyle: FontStyle.italic),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    article.author ?? "Tidak ada data",
                    style: TextStyle(fontSize: 12.0, color: Colors.grey),
                  ),
                  Text(
                    article.publishedAt.toString().substring(0, 11) ??
                        "Tidak ada data",
                    style: TextStyle(fontSize: 12.0, color: Colors.grey),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
