import 'package:flutter/material.dart';
import 'dart:html' as html;

class LinkedIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.hail),
        title: Text('LinkedIn'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            html.window.open(
                'https://www.linkedin.com/in/eduard-movchan-sysadm/', "_blank");
          },
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.indigo)),
          child: Icon(Icons.link_sharp),
        ),
      ),
    );
  }
}
