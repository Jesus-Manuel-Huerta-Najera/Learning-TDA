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
      home: acentMin(),
    );
  }

}
class acentMin extends StatefulWidget{
  @override
  acentState createState() => new acentState();


}
class acentState extends State<acentMin>{
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
                child: Text("Á",textAlign: TextAlign.center,
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
                child: Text("É",textAlign: TextAlign.center,
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
                child: Text("Í",textAlign: TextAlign.center,
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
                child: Text("Ó",textAlign: TextAlign.center,
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
                child: Text("Ú",textAlign: TextAlign.center,
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