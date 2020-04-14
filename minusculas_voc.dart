import 'package:flutter/material.dart';
import 'Main_voc.dart';
import 'voc.dart';
void main() => runApp(MyAppss());
class MyAppss extends StatelessWidget{
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
      home: minus(),
    );
  }

}
class minus extends StatefulWidget{
  @override
  minusState createState() => new minusState();


}
class minusState extends State<minus>{
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
      appBar: AppBar(title: Text("minusculas"),
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
                onPressed: null,
                child: Text("a",
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
                child: Text("e",
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
                child: Text("i",textAlign: TextAlign.center,
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
                child: Text("o",
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
                child: Text("u",
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