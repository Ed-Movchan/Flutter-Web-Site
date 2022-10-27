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
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                  height: height * 0.9,
                  width: width * 0.8,
                  child: Image(image: AssetImage('eduard_movchan_cv.png'))),
              ElevatedButton(
                onPressed: () {
                  downloadFile(
                      'https://drive.google.com/uc?id=11zyTJ51FBf5oAHxABM5xhwIdji_R4AZH&export=download');
                },
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.green)),
                child: Text('Download', style: TextStyle(color: Colors.white, fontSize: 20)),
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
