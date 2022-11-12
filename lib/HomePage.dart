import 'package:flutter/material.dart';

import 'Article.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Article('Title','Date','https://picsum.photos/250?image=9'),
        Article('Title','Date','https://picsum.photos/250?image=9'),
        Article('Title','Date','https://picsum.photos/250?image=9'),
        Article('Title','Date','https://picsum.photos/250?image=9'),
      ],
    );
  }
}
