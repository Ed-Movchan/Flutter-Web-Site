import 'package:flutter/material.dart';
import 'package:flutter_web_app/begin_work.dart';
import 'package:flutter_web_app/faq.dart';
import 'package:flutter_web_app/my_home_page.dart';
import 'package:flutter_web_app/other.dart';

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
        '/': (context) => MyHomePage(title:'OnClinic IT Portal'),
        '/BeginWork': (context) => BeginWork(),
        '/FAQ': (context) => FAQ(),
        '/Other': (context) => Other(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}