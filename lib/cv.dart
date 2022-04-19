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
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: InkWell(
                  onTap: () {
                    downloadFile(
                        'https://drive.google.com/file/d/127FYiodJAR2O7jWdPSTigY7mZJP_j0vv/view?usp=sharing');
                  },
                  child: Text(
                    'Download',
                    style: TextStyle(decoration: TextDecoration.underline, color: Colors.blue),
                  ),
                ),
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
