import 'package:flutter/material.dart';
import 'package:flutter_web_app/begin_work.dart';
import 'package:flutter_web_app/contacts.dart';
import 'package:flutter_web_app/faq.dart';
import 'package:flutter_web_app/my_home_page.dart';
import 'package:flutter_web_app/price.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(title: 'Cache IT'),
        '/BeginWork': (context) => BeginWork(),
        '/Price': (context) => Price(),
        '/FAQ': (context) => FAQ(),
        '/Contacts': (context) => Contacts(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
