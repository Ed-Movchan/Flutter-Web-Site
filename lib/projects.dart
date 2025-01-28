import 'package:flutter/material.dart';
import 'dart:html' as html;

class Projects extends StatefulWidget {
  @override
  State<Projects> createState() => _ProjectsState();
}

final GlobalKey _key = GlobalKey();

class _ProjectsState extends State<Projects> {
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
              child: Icon(Icons.terminal_rounded),
            ),
            Text('Projects')
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
                _buildProjectCard(
                    'glpi_icon.png',
                    "GLPI",
                    "Inventory and Ticket System",
                    "login: normal, pass: P@ssw1red"),
                SizedBox(height: 5),
                ElevatedButton(
                  onPressed: () => html.window.open(
                    'http://movchan-glpi.pp.ua', "_blank"),
                  style: ButtonStyle(
                      backgroundColor:
                      WidgetStateProperty.all<Color>(Colors.green)),
                  child: Text('Link',
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ),
              ]),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProjectCard(String image, String title, String description, String creds) {
    return GestureDetector(
      onTap: () => html.window.open(
          'http://movchan-glpi.pp.ua', "_blank"),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
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
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    description, overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                  ),
                  SizedBox(height: 5),
                  Text(
                    creds, overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}