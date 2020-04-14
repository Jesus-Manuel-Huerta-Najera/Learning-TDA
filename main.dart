import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'Main_voc.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget{
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
 // void initState() {
   // super.initState();
  //}
  double buttonHigh = 50;
  double buttonWidth = 100;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
     resizeToAvoidBottomPadding : false,
      backgroundColor: Colors.cyan,
      appBar: AppBar(title: Text("Welcome"),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.cyanAccent,
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
           Container(
            padding: EdgeInsets.all(30.00),
            width: buttonWidth,
            height: buttonHigh,
            child: new MaterialButton(
              child: Text("Vocales",
                textAlign: TextAlign.center,
                style: TextStyle(

                ),),
              color: Colors.blue,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Main_voc()));
              },
            ),
          ),
          new Container(
            padding: EdgeInsets.all(30.00),
            width: buttonWidth,
            height: buttonHigh,
            child: new MaterialButton(
                  onPressed: null,
               child: Text("Salir",
                 textAlign: TextAlign.center,
                 style: TextStyle(

                 ),),
              color: Colors.blue,
    )
          ),

        ],
      ),

    );
  }
}
