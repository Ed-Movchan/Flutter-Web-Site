import 'package:flutter/material.dart';

class Other extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.open_with),
        title: Text('Other'),
        centerTitle: true,
      ),
      body: Center(
          child: SelectableText('Other')
      ),
    );
  }
}