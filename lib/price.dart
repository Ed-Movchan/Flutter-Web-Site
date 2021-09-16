import 'package:flutter/material.dart';

class Price extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.monetization_on_outlined),
        title: Text('Price'),
        centerTitle: true,
      ),
      body: Center(child: SelectableText('Price')),
    );
  }
}
