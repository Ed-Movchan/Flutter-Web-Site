import 'package:flutter/material.dart';
import 'package:flutter_web_app/cv.dart';
import 'package:flutter_web_app/application.dart';
import 'package:flutter_web_app/gradient_background.dart';
import 'package:flutter_web_app/my_home_page.dart';
import 'package:flutter_web_app/particles_background.dart';
import 'package:flutter_web_app/projects.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movchan Eduard - System Administrator',
      initialRoute: '/',
      routes: {
        '/': (context) => Stack(children: [
          Positioned.fill(child: GradientBackground()),
          Positioned.fill(child: CircularParticleScreen()),
          Center(child:MyHomePage())],
        ),
        '/CV': (context) => CV(),
        '/Application': (context) => Application(),
        '/Projects': (context) => Projects(),
      },
      theme: ThemeData(
        primarySwatch: Colors.orange,
          textTheme: TextTheme(
              headlineMedium: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
              displaySmall: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
              titleMedium: TextStyle(color: Colors.black87, fontSize: 16, fontWeight: FontWeight.bold),
              labelLarge: TextStyle(color: Colors.white, fontSize: 14),
          ),
          textSelectionTheme: TextSelectionThemeData(selectionColor: Colors.blue),
          fontFamily: "GoogleSansRegular",
      ),
    );
  }
}
