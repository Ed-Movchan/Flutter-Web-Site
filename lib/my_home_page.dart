import 'package:flutter/material.dart';
import 'dart:html' as html;
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:marquee_list/marquee_list.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage();

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: Container(
          padding: EdgeInsets.only(bottom: 10),
          height: 50,
          child: MarqueeList(
            scrollDirection: Axis.horizontal,
            scrollDuration: const Duration(seconds: 3),
            children: [
              Text("Skills: Windows, Windows Server, Linux, MacOS, Android, iOS,"
                   "Active Directory, FTP, SMTP, DHCP, Group Policy, Terminal Server,"
                   "Apache, Nginx, Git, Dart (Flutter), C# (.NET MAUI), GLPI, Zabbix,"
                   "HikVision, Mikrotik, GitLab Server, Open Project, Samsung KNOX MDM",
              style: Theme.of(context).textTheme.displaySmall,
              ),
            ],
          ),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Container(
                      child: Image(image: AssetImage('assets/icon_white.png'))),
                ),
                Padding(
                    padding: EdgeInsets.symmetric(vertical: 25),
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: SizedBox(
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText('www.movchanskiy.pp.ua',
                              speed: Duration(milliseconds: 140),
                              textStyle:
                                  Theme.of(context).textTheme.headlineMedium),
                        ],
                        repeatForever: true,
                        onTap: () => html.window.location.reload(),
                      ),
                    ),
                    ),
                  ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: SelectableText(
                    'Last updated: 22 May 2024',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    menuSection('/CV', 'assets/cv_logo.png', ''),
                    menuSection('/Application',
                        'assets/google_play_store_logo.png', 'Applications'),
                    menuSection('/Certifications',
                        'assets/certificate_logo.jpg', 'Certifications'),
                    externalLinkSection('assets/about_me.png', ''),
                  ],
                ),
                 Padding(
                   padding: EdgeInsets.only(top: 10),
                   child:Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                      Icon(Icons.copyright_sharp, size: 14,color: Colors.white),
                      SelectableText('2024 Movchan',
                       style: Theme.of(context).textTheme.labelLarge),
                    ]
                  ),
                 ),
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
                        style: Theme.of(context).textTheme.titleMedium),
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
            'https://about.me/eduardmovchan', "_blank"),
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
