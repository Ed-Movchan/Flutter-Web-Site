import 'package:flutter/material.dart';

class Certifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.dashboard_outlined),
        title: Text('Certifications'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
                height: height * 0.8,
                width: width * 0.9,
                child: Image(image: AssetImage('udemy_learn_flutter_certificate.jpg'))),
          ],
        ),
      ),
    );
  }
}
