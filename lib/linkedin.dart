import 'package:flutter/material.dart';

class LinkedIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.hail),
        title: Text('LinkedIn'),
        centerTitle: true,
      ),
      body: Center(child: SelectableText('LinkedIn')),
    );
  }
}
