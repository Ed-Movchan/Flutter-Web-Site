import 'package:flutter/material.dart';

class CV extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.hail),
        title: Text('CV'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: height * 0.9,
          width: width * 0.5,
          child: Image(image: AssetImage('eduard_movchan_cv.png'))
        ),
      ),
    );
  }
}