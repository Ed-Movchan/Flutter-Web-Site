import 'package:flutter/material.dart';
import 'dart:html' as html;

class CV extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
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
            child: Icon(Icons.list_alt),
          ),
          Text('CV'),
        ]),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                  height: height * 0.9,
                  width: width * 0.8,
                  child: Image(image: AssetImage('assets/cv.jpg'))),
              ElevatedButton(
                onPressed: () {
                  downloadFile(
                      'https://drive.usercontent.google.com/u/0/uc?id=1OYbAV0LlgC_LyD1V7X5afYDMQ2wLMjN3&export=download');
                },
                style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.all<Color>(Colors.green)),
                child: Icon(Icons.file_download, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void downloadFile(String url) {
    html.AnchorElement anchorElement = html.AnchorElement(href: url);
    anchorElement.download = url;
    anchorElement.click();
  }
}
