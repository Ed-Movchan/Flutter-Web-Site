import 'package:flutter/material.dart';

class Certifications extends StatelessWidget {
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
            child: Icon(Icons.dashboard_outlined),
          ),
          Text('Certifications'),
        ]),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                  height: height * 0.8,
                  width: width * 0.9,
                  child: Image(
                      image:
                          AssetImage('udemy_learn_flutter_certificate.jpg'))),
              Container(
                  height: height * 0.8,
                  width: width * 0.9,
                  child: Image(
                      image: AssetImage(
                          'lemon_school_javascript_certificate.jpg'))),
            ],
          ),
        ),
      ),
    );
  }
}
