import 'package:flutter/material.dart';

class Contacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.open_with),
        title: Text('Contacts'),
        centerTitle: true,
      ),
      body: Center(child: SelectableText('OtContacts')),
    );
  }
}
