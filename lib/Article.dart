import 'dart:html';

import 'package:flutter/material.dart';

class Article extends StatefulWidget {
  Article(this.title, this.date, this.url);

  String title;
  String date;
  String url;

  @override
  State<Article> createState() => _ArticleState();
}

class _ArticleState extends State<Article> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(widget.url),
      title: Text(widget.title),
      subtitle: Text(widget.date),
    );
  }
}
