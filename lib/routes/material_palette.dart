import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MaterialPalette extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Material Palette"),
      ),
      body: WebView(
        initialUrl: 'https://www.materialpalette.com/',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
