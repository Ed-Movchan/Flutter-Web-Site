import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
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
        title: SelectableText(widget.title),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Container(
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.all(Radius.circular(10)),
                // boxShadow: [
                //   BoxShadow(
                //     color: Colors.deepPurple.withOpacity(0.5),
                //     spreadRadius: 3,
                //     blurRadius: 5,
                //     offset: Offset(0, 3),
                //   ),
                // ],
                color: Colors.deepPurple,
              ),
              height: 130,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        child: Flexible(
                          child: SelectableText(
                            '050 177-79-74  |  097 729-97-01',
                            style: TextStyle(
                                fontSize: 28,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        // height: 40,
                        // width: 300,
                        // decoration: BoxDecoration(
                        //   borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        //   color: Colors.white,
                        // ),
                        // child: Center(
                        //   child: TextFormField(
                        //     decoration: InputDecoration(
                        //       labelText: "Поиск по документации...",
                        //       suffixIcon: IconButton(
                        //         onPressed: () {},
                        //         icon: Icon(Icons.search),
                        //       ),
                        //       fillColor: Colors.white,
                        //       border: OutlineInputBorder(
                        //         borderRadius: BorderRadius.circular(10.0),
                        //         borderSide: BorderSide(),
                        //       ),
                        //     ),
                        //     enabled: true,
                        //     cursorHeight: 18,
                        //     cursorColor: Colors.blueAccent,
                        //     style: TextStyle(fontSize: 18),
                        //   ),
                        // ),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Container(
                          height: 40,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
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
                              cursorColor: Colors.deepPurple,
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
          Flexible(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                menuSection('/BeginWork', Icons.hail, 'Услуги'),
                menuSection('/Price', Icons.monetization_on_outlined, 'Цены'),
                menuSection('/FAQ', Icons.help_outline, 'ЧаВо'),
                menuSection('/Contacts', Icons.phone, 'Контакты'),
              ],
            ),
          ),
          Flexible(
            child: Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: SelectableText(
                'Welcome to Cache IT Portal',
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Flexible(
            child: Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: SelectableText(
                'You need SysAdmin help - we do it!',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Flexible(
            child: Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: SelectableText(
                'Windows, Linux, MacOS, Servers, Cloud, HelpDesk',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            height: 80,
            child: CachedNetworkImage(
              placeholder: (context, url) => CircularProgressIndicator(),
              imageUrl:
                  'https://i.picsum.photos/id/1/5616/3744.jpg?hmac=kKHwwU8s46oNettHKwJ24qOlIAsWN9d2TtsXDoCWWsQ',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SelectableText(
              'Do you like Cashe IT?',
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
                  color: Colors.white70,
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
                width: width * 0.2,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child:
                          Icon(prefixIcon, size: 60, color: Colors.blueAccent),
                    ),
                    Flexible(
                      child: SelectableText(
                        text,
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
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
