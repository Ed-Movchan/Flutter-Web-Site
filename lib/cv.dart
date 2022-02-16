import 'package:flutter/material.dart';
import 'dart:html' as html;

class CV extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.list_alt),
        title: Text('CV'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
            children: [
              Container(
            height: height * 0.9,
            width: width * 0.8,
            child: Image(image: AssetImage('eduard_movchan_cv.png'))),
              ElevatedButton(
                onPressed: () {
                  downloadFile('https://drive.google.com/file/d/1YRUr5z_GuCeOdfBYkcAAP1pwAOm4MTSH/view?usp=sharing');
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.green)),
                child: Icon(Icons.download_rounded),
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
