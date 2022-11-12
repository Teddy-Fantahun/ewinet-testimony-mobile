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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


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
            Article('Title','Date','https://picsum.photos/250?image=9'),
            Article('Title','Date','https://picsum.photos/250?image=9'),
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
