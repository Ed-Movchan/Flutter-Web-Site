import 'dart:ui';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

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
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blueAccent.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
                color: Colors.blueAccent,
              ),
              height: 130,
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      color: Colors.white,
                    ),
                    child: Center(
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: "Поиск по документации...",
                            suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.search),
                            ),
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(),
                            ),
                          ),
                          enabled: true,
                          cursorHeight: 18,
                          cursorColor: Colors.blueAccent,
                          style: TextStyle(fontSize: 18),
                        )),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                menuSection('/BeginWork', Icons.hail, 'Приступаем к работе'),
                menuSection('/FAQ', Icons.help_outline, 'ЧаВо'),
                menuSection('/Other', Icons.open_with, 'Другое'),
              ],
            ),
          ),
          // CachedNetworkImage(
          //   placeholder: (context, url) => CircularProgressIndicator(),
          //   imageUrl: 'https://picsum.photos/250?image=9',
          // ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SelectableText(
              'Do you like OnClinic IT Portal?',
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      '$_counterLike',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: _incrementCounter,
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.green)),
                    child: Icon(Icons.plus_one),
                  ),
                ],
              ),
              SizedBox(width: 50),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      '$_counterDislike',
                      style: Theme.of(context).textTheme.headline4,
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
        ],
      ),
    );
  }

  Widget menuSection(String route, IconData prefixIcon, String text) {
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, route),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                color: Colors.white70,
                border: Border.all(
                    color: Colors.grey,
                    width: 1.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              height: 80,
              width: width * 0.3,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(prefixIcon, size: 60, color: Colors.blueAccent),
                  ),
                  SelectableText(text, style: TextStyle(
                      color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}