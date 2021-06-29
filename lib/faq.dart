import 'package:flutter/material.dart';

class FAQ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.help_outline),
        title: Text('F.A.Q.'),
        centerTitle: true,
      ),
      body: Center(
          child: SelectableText('F.A.Q.')
      ),
    );
  }
}