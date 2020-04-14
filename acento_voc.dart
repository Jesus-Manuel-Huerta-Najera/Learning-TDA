import 'package:flutter/material.dart';
import 'Main_voc.dart';
import 'voc.dart';
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
      home: acent(),
    );
  }

}
class acent extends StatefulWidget{
  @override
  acentState createState() => new acentState();


}
class acentState extends State<acent>{
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
      appBar: AppBar(title: Text("Acentos"),
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
                child: Text("á",textAlign: TextAlign.center,
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
                child: Text("é",textAlign: TextAlign.center,
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
                child: Text("í",
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
                child: Text("ó",textAlign: TextAlign.center,
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
                child: Text("ú",textAlign: TextAlign.center,
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
                child: Text("Regresar",textAlign: TextAlign.center,
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