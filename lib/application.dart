import 'package:flutter/material.dart';
import 'dart:html' as html;

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Icon(Icons.app_settings_alt),
            ),
            Text('Applications')
          ],
        ),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(5),
                  child: SelectableText(
                    'Weather Application (Flutter) / Android',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 5),
                ElevatedButton(
                  onPressed: () {
                    downloadFile(
                        'https://drive.google.com/uc?id=149KqBfiXeQVPKOzCl3h2nl7bmTIgCwUH&export=download');
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.green)),
                  child: Text('Download',
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: EdgeInsets.all(5),
                  child: SelectableText(
                    'Simple Notes (Flutter) / Android',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 5),
                ElevatedButton(
                  onPressed: () {
                    downloadFile(
                        'https://drive.google.com/uc?id=12RFwS4WjLtC9E-ItqjaZeUQAL868Naex&export=download');
                  },
                  style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green)),
                  child: Text('Download',
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ),
          ]),
        ),
    );
  }

  void downloadFile(String url) {
    html.AnchorElement anchorElement = html.AnchorElement(href: url);
    anchorElement.download = url;
    anchorElement.click();
  }
}
