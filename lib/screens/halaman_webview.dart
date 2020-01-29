import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class HalamanWebView extends StatelessWidget {

  final String urlBerita;

  HalamanWebView(this.urlBerita);

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: urlBerita,
    );
  }
}
