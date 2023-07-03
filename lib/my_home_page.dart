import 'package:flutter/material.dart';
import 'dart:html' as html;
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_web_app/widget/hand_cursor.dart';
import 'package:marquee/marquee.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage();

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counterLike = 0;
  int _counterDislike = 0;

  void _incrementCounter() {
    setState(() {
      _counterLike++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counterDislike--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade400,
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: Container(
          padding: EdgeInsets.only(bottom: 10),
          height: 50,
          child: Marquee(
            text:
                'Skills: Windows, Windows Server, Linux, MacOS, Android, iOS, '
                'Active Directory, FTP, SMTP, DHCP, Group Policy, Terminal Server, '
                'Apache, Nginx, Git, Dart (Flutter), C# (.NET MAUI), GLPI, Zabbix, '
                'HikVision, Mikrotik, GitLab Server, Open Project, Headwind MDM',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            scrollAxis: Axis.horizontal,
            crossAxisAlignment: CrossAxisAlignment.start,
            blankSpace: 50.0,
            velocity: 50.0,
            startPadding: 10.0,
            accelerationDuration: Duration(seconds: 1),
            accelerationCurve: Curves.linear,
            decelerationDuration: Duration(milliseconds: 500),
          ),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Container(
                      child: Image(
                          image: AssetImage('assets/icon_white.png'))),
                ),
                HandCursor(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 30),
                    child: SizedBox(
                      child: DefaultTextStyle(
                        style: const TextStyle(
                            fontSize: 32,
                            color: Colors.indigo,
                            fontWeight: FontWeight.bold),
                        child: AnimatedTextKit(
                          animatedTexts: [
                            TyperAnimatedText('www.movchanskiy.pp.ua', speed: Duration(milliseconds: 80)),
                            WavyAnimatedText('www.movchanskiy.pp.ua'),
                          ],
                          repeatForever: true,
                          onTap: () => html.window.location.reload(),
                        ),
                      ),
                    ),
                  ),
                ),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: SelectableText(
                'Last updated: 03 July 2023',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                menuSection('/CV', 'assets/cv_logo.png', ''),
                externalLinkSection('assets/linkedin_logo.jpg', ''),
                menuSection('/Application', 'assets/google_play_store_logo.png',
                    'Applications'),
                menuSection('/Certifications', 'assets/certificate_logo.jpg',
                    'Certifications'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _incrementCounter,
                  style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green)),
                  child: Icon(Icons.plus_one),
                ),
                    SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    '$_counterLike',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                    SizedBox(width: 50),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        '$_counterDislike',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: _decrementCounter,
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.red)),
                      child: Icon(Icons.exposure_minus_1),
                    ),
                  ],
                )
          ],
        ),
      ),
    );
  }

  Widget menuSection(String route, String image, String text) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () => Navigator.pushNamed(context, route),
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        splashColor: Colors.grey,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  color: Colors.white,
                  border: Border.all(color: Colors.grey, width: 1.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                height: height * 0.08,
                width: width * 0.4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(child: Image(image: AssetImage(image))),
                    ),
                    Flexible(
                      child: Text(
                        text,
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget externalLinkSection(String image, String text) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () => html.window.open(
            'https://www.linkedin.com/in/eduard-movchan-sysadm/', "_blank"),
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        splashColor: Colors.grey,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  color: Colors.white,
                  border: Border.all(color: Colors.grey, width: 1.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                height: height * 0.08,
                width: width * 0.4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(child: Image(image: AssetImage(image))),
                    ),
                    Flexible(
                      child: Text(
                        text,
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
