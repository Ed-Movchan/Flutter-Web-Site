import 'package:flutter/material.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.app_settings_alt),
        title: Text('Applications'),
        centerTitle: true,
      ),
      body: Center(
          child: SelectableText('Applications')
      ),
    );
  }
}