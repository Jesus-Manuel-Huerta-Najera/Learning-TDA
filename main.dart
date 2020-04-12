import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: homePage(),
    );
  }

}
class homePage extends StatefulWidget{
  @override
  _myHomePageState createState() => new _myHomePageState();


}
class _myHomePageState extends State<homePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(title: Text("Welcome"),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[

        ],
      ),

    );
  }
}