import 'package:flutter/material.dart';
import 'Main_voc.dart';
import 'voc.dart';
void main() => runApp(MyApps());
class MyApps extends StatelessWidget{
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
      home: Mayus(),
    );
  }

}
class Mayus extends StatefulWidget{
  @override
  MayusState createState() => new MayusState();


}
class MayusState extends State<Mayus>{
  @override
  void initState() {
    super.initState();
  }
  double buttonHigh = 50;
  double buttonWidth = 100;
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return new Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(title: Text("Mayusculas"),
        backgroundColor: Colors.cyanAccent,
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          new Container(
              padding: EdgeInsets.all(30.00),
              width: buttonWidth,
              height: buttonHigh,
              child: new MaterialButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => multi("A")));
                },
                child: Text("A",
                  textAlign: TextAlign.center,
                  style: TextStyle(

                  ),),
                color: Colors.blue,
              )
          ),
          new Container(
              padding: EdgeInsets.all(30.00),
              width: buttonWidth,
              height: buttonHigh,
              child: new MaterialButton(
                onPressed: null,
                child: Text("E",
                  textAlign: TextAlign.center,
                  style: TextStyle(

                  ),),
                color: Colors.blue,
              )
          ),
          new Container(
              padding: EdgeInsets.all(30.00),
              width: buttonWidth,
              height: buttonHigh,
              child: new MaterialButton(
                onPressed: null,
                child: Text("I",
                  textAlign: TextAlign.center,
                  style: TextStyle(

                  ),),
                color: Colors.blue,
              )
          ),
          new Container(
              padding: EdgeInsets.all(30.00),
              width: buttonWidth,
              height: buttonHigh,
              child: new MaterialButton(
                onPressed: null,
                child: Text("O",
                  textAlign: TextAlign.center,
                  style: TextStyle(

                  ),),
                color: Colors.blue,
              )
          ),
          new Container(
              padding: EdgeInsets.all(30.00),
              width: buttonWidth,
              height: buttonHigh,
              child: new MaterialButton(
                onPressed: null,
                child: Text("U",textAlign: TextAlign.center,
                  style: TextStyle(

                  ),),
                color: Colors.blue,
              )
          ),
          new Container(
              padding: EdgeInsets.all(30.00),
              width: buttonWidth,
              height: buttonHigh,
              child: new MaterialButton(
                onPressed: (){
                  Navigator.pop(context, MaterialPageRoute(
                      builder: (context) => Main_voc()));
                },
                child: Text("Regresar",
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