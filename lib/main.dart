import 'package:ewinet_testimony/HomePage.dart';
import 'package:flutter/material.dart';

import 'Article.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage1(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage1 extends StatefulWidget {
  const MyHomePage1({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage1> createState() => _MyHomePageState1();
}

class _MyHomePageState1 extends State<MyHomePage1> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Ewinet'),
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(text: 'Home',),
              Tab(text: 'Salvation', ),
              Tab(text: 'Prayer', ),
              Tab(text: 'Relationship', ),
              Tab(text: 'Deliverance', ),
              Tab(text: 'Healing', ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            HomePage(),
            HomePage(),
            Article('Title','Date','https://picsum.photos/250?image=9'),
            Article('Title','Date','https://picsum.photos/250?image=9'),
            Article('Title','Date','https://picsum.photos/250?image=9'),
            Article('Title','Date','https://picsum.photos/250?image=9'),
          ],
        )
      ),
    );
  }
}
