import 'package:flutter/material.dart';

class CV extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.hail),
        title: Text('CV'),
        centerTitle: true,
      ),
      body: Center(
        child: SelectableText('CV')
      ),
    );
  }
}