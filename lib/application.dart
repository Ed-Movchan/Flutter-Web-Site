import 'package:flutter/material.dart';
import 'dart:html' as html;

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Row(mainAxisAlignment: MainAxisAlignment.center,
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
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildProjectSection(),
          ]),
        ),
    );
  }


  Widget _buildProjectSection() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 10),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          _buildProjectCard("Weather App", "Flutter / Android", 'https://drive.google.com/uc?id=149KqBfiXeQVPKOzCl3h2nl7bmTIgCwUH&export=download'),
          SizedBox(height: 5),
          ElevatedButton(
            onPressed: () {
              downloadFile(
                  'https://drive.google.com/uc?id=149KqBfiXeQVPKOzCl3h2nl7bmTIgCwUH&export=download');
            },
            style: ButtonStyle(
                backgroundColor:
                WidgetStateProperty.all<Color>(Colors.green)),
            child: Text('Download',
                style: TextStyle(color: Colors.white, fontSize: 20)),
          ),
        ]),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildProjectCard("Simple Notes", "Flutter / Android", 'https://drive.google.com/uc?id=12RFwS4WjLtC9E-ItqjaZeUQAL868Naex&export=download'),
            SizedBox(height: 5),
            ElevatedButton(
              onPressed: () {
                downloadFile(
                    'https://drive.google.com/uc?id=12RFwS4WjLtC9E-ItqjaZeUQAL868Naex&export=download');
              },
              style: ButtonStyle(
                  backgroundColor:
                  WidgetStateProperty.all<Color>(Colors.green)),
              child: Text('Download',
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildProjectCard("Host Pinger", "Flutter / Android", 'https://drive.usercontent.google.com/u/0/uc?id=1JTvS_MpIWG_b9OFV2601u6u_ga0EjHH3&export=download'),
            SizedBox(height: 5),
            ElevatedButton(
              onPressed: () {
                downloadFile(
                    'https://drive.usercontent.google.com/u/0/uc?id=1JTvS_MpIWG_b9OFV2601u6u_ga0EjHH3&export=download');
              },
              style: ButtonStyle(
                  backgroundColor:
                  WidgetStateProperty.all<Color>(Colors.green)),
              child: Text('Download',
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildProjectCard(String title, String description, String fileLink) {
    return GestureDetector(
      onTap: () {
        downloadFile(fileLink);
      },
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                description,
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
            ],
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
