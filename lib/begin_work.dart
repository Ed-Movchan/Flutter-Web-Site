import 'package:flutter/material.dart';

class BeginWork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.hail),
        title: Text('Begin Work'),
        centerTitle: true,
      ),
      body: Center(
        child: SelectableText('Begin Work')
      ),
    );
  }
}