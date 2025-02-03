import 'package:flutter/material.dart';
import 'dart:html' as html;

class Application extends StatefulWidget {
  @override
  State<Application> createState() => _ApplicationState();
}

final GlobalKey _key = GlobalKey();

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Icon(Icons.app_settings_alt),
            ),
            Text('Applications')
          ],
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          key: _key,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                _buildApplicationCard(
                    'weather_app_icon_275x275.png',
                    "Weather App",
                    "Flutter / Android",
                    'https://drive.google.com/uc?id=149KqBfiXeQVPKOzCl3h2nl7bmTIgCwUH&export=download'),
                SizedBox(height: 5),
                ElevatedButton(
                  onPressed: () {
                    downloadFile(
                        'https://drive.google.com/uc?id=149KqBfiXeQVPKOzCl3h2nl7bmTIgCwUH&export=download');
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all<Color>(Colors.green)),
                  child: Icon(Icons.file_download, color: Colors.white),
                ),
              ]),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildApplicationCard(
                      'mini_notes_icon_256x256.png',
                      "Mini Notes",
                      "Flutter / Android",
                      'https://github.com/Ed-Movchan/mini_notes/releases/download/mini_notes-v0.1.0/mini_notes-v0.1.0.apk'),
                  SizedBox(height: 5),
                  ElevatedButton(
                    onPressed: () {
                      downloadFile(
                          'https://github.com/Ed-Movchan/mini_notes/releases/download/mini_notes-v0.1.0/mini_notes-v0.1.0.apk');
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all<Color>(Colors.green)),
                    child: Icon(Icons.file_download, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildApplicationCard(
                      'host_pinger_icon_256x256.png',
                      "Host Pinger",
                      "Flutter / Android",
                      'https://github.com/Ed-Movchan/host-pinger/releases/download/v0.1.0/host_pinger-0.1.0.apk'),
                  SizedBox(height: 5),
                  ElevatedButton(
                    onPressed: () {
                      downloadFile(
                          'https://github.com/Ed-Movchan/host-pinger/releases/download/v0.1.0/host_pinger-0.1.0.apk');
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all<Color>(Colors.green)),
                    child: Icon(Icons.file_download, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildApplicationCard(
                      'scanning-device_256x256.png',
                      "Port Scanner",
                      "Flutter / Android",
                      'https://github.com/Ed-Movchan/port-scanner/releases/download/v0.1.0/port_scanner-v0.1.0.apk'),
                  SizedBox(height: 5),
                  ElevatedButton(
                    onPressed: () {
                      downloadFile(
                          'https://github.com/Ed-Movchan/port-scanner/releases/download/v0.1.0/port_scanner-v0.1.0.apk');
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all<Color>(Colors.green)),
                    child: Icon(Icons.file_download, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildApplicationCard(
                      'whois_icon_256x256.png',
                      "Whois",
                      "Flutter / Android",
                      'https://github.com/Ed-Movchan/whois/releases/download/v0.1.0/whois-v0.1.0.apk'),
                  SizedBox(height: 5),
                  ElevatedButton(
                    onPressed: () {
                      downloadFile(
                          'https://github.com/Ed-Movchan/whois/releases/download/v0.1.0/whois-v0.1.0.apk');
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all<Color>(Colors.green)),
                    child: Icon(Icons.file_download, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildApplicationCard(
                      'tap_icon_256x256.png',
                      "Tap Battle Game",
                      "Flutter / Android",
                      'https://github.com/Ed-Movchan/tap_battle_game/releases/download/tap_battle_game-v0.1.0/tap_battle_game-v0.1.0.apk'),
                  SizedBox(height: 5),
                  ElevatedButton(
                    onPressed: () {
                      downloadFile(
                          'https://github.com/Ed-Movchan/tap_battle_game/releases/download/tap_battle_game-v0.1.0/tap_battle_game-v0.1.0.apk');
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all<Color>(Colors.green)),
                    child: Icon(Icons.file_download, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildApplicationCard(
      String image, String title, String description, String fileLink) {
    return GestureDetector(
      onTap: () {
        downloadFile(fileLink);
      },
      child: Container(
        width: 300,
        child: Card(
          elevation: 3,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                      height: 50,
                      width: 50,
                      child: Image(image: AssetImage('assets/' + image))),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text(
                      description,
                      style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void downloadFile(String url) {
    html.AnchorElement anchorElement = html.AnchorElement(href: url);
    anchorElement.download = url;
    anchorElement.click();
  }
}
