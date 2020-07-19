import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "State Demo",
      home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {

  String myText = "Hello World";

  void _changeText(){
    setState(() {
      if(myText.startsWith("H")){
        myText = "Button is Clicked";
      }
      else{
        myText = "Hello World"; 
      }
    });
  }

  Widget _bodyWidget(){
    return new Container(
      color: new Color(0xFF34495E),
      padding: const EdgeInsets.all(8.0),
      child: new Center(
       child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              myText,
              style: new TextStyle(
                color: Colors.white,
                fontSize: 20
              ),
            ),
            new RaisedButton(
              color: new Color(0xFFE74C3C),
              textColor: new Color(0xFFEEEEEE),
              child: new Text("Click"),
              onPressed: _changeText,
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("States Demo"),
      ),
      body: _bodyWidget(),
    );
  }
}