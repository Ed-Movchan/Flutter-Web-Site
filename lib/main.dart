import 'package:flutter/material.dart';
import 'package:flutter_web_app/cv.dart';
import 'package:flutter_web_app/certifications.dart';
import 'package:flutter_web_app/application.dart';
import 'package:flutter_web_app/my_home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Web Site',
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/CV': (context) => CV(),
        '/Application': (context) => Application(),
        '/Certifications': (context) => Certifications(),
      },
      theme: ThemeData(
        primarySwatch: Colors.orange,
          textSelectionTheme: TextSelectionThemeData(selectionColor: Colors.green)
      ),
    );
  }
}
