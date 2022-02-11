import 'package:flutter/material.dart';

class Certifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.dashboard_outlined),
        title: Text('Certifications'),
        centerTitle: true,
      ),
      body: Center(child: SelectableText('Certifications')),
    );
  }
}
