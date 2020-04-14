import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget{
  String text;
  MyApp({this.text});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.cyan,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.green,
      ),
      home: multi(this.text),
    );
  }

}
class multi extends StatefulWidget{
  String text;
  multi(this.text);
  @override
  _myHomePageState createState() => new _myHomePageState(this.text);


}
class _myHomePageState extends State<multi>{
  _myHomePageState(this.text);
  String text;
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(title: Text("$text"),
        backgroundColor: Colors.cyanAccent,
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          new Text(
            "$text",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 100.00,
              fontWeight: FontWeight.bold

            ),
          ),

        ],
      ),

    );
  }
}