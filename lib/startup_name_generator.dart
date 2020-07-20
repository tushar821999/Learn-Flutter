import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Startup Name Generator",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Startup Name Generator"),
        ),
        body: new Center(
          child: new RandomWords(),
        ),
      ),
    );
  }
}

// statefull widget 
class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {

    final List<WordPair> _suggestions = <WordPair>[];
    final TextStyle _biggerFont = new TextStyle(fontSize: 30);


    final wordPair = WordPair.random();
    return new Text(wordPair.asPascalCase,
    style: new TextStyle(
      fontSize: 30.0,
    ),
    );
  }
}