import 'package:flutter/material.dart';
import 'dart:html' as html;
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
            children: _getSkillChips(),
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
                GestureDetector(
                  child: Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child:Container(
                        child: Image(image: AssetImage('assets/icon_white.png')))),
                  ),
                  onTap: () => html.window.location.reload(),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 25),
                  child: SizedBox(
                      child: SelectableText('www.movchanskiy.pp.ua',
                              style: Theme.of(context).textTheme.headlineMedium),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: SelectableText(
                    'Updated: 20 February 2025',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    menuSection('/CV', 'assets/cv_logo.png', ''),
                    menuSection('/Application',
                        'assets/application_logo.png', 'Applications'),
                    menuSection('/Projects',
                        'assets/project_logo.png', 'Projects'),
                    externalLinkSection('assets/about_me.png', ''),
                  ],
                ),
                 Padding(
                   padding: EdgeInsets.only(top: 10),
                   child:Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                      Icon(Icons.copyright_sharp, size: 14,color: Colors.white),
                      SelectableText('2025 Movchan',
                       style: Theme.of(context).textTheme.labelLarge),
                    ]
                  ),
                 ),
              ],
            ),
          ),
    );
  }

  List<Widget> _getSkillChips() {
    List<String> skills = [
      "Windows", "Windows Server", "Linux", "MacOS", "Android", "iOS",
      "Active Directory", "SFTP", "SMTP", "DHCP", "Group Policy",
      "Apache", "Docker", "Git", "Dart (Flutter)", "C# (.NET MAUI)",
      "GLPI", "Zabbix", "HikVision", "Mikrotik", "GitLab Server",
      "Open Project", "Powershell"
    ];

    return skills.map((skill) {
      return Chip(
        label: Text(skill, style: Theme.of(context).textTheme.bodyLarge),
        backgroundColor: Colors.white,
      );
    }).toList();
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
                      color: Colors.grey.withValues(),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                height: height * 0.08,
                width: width * 0.45,
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
                      color: Colors.grey.withValues(),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                height: height * 0.08,
                width: width * 0.45,
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
