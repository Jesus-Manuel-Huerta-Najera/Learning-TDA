import 'package:flutter/material.dart';
import 'Main_voc.dart';
import 'voc.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
void main() => runApp(MyApps());
class MyApps extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Schyler',
        brightness: Brightness.light,
        primarySwatch: Colors.cyan,
      ),
      darkTheme: ThemeData(
        fontFamily: 'Schyler',
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
  AudioPlayer audioPlayer;
  AudioCache audioCache;
  List<Color> _colors = [Colors.deepOrangeAccent,Colors.green];
  List<double> _stops = [0.7,0.0];
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
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(title: Text("Mayusculas",
      style: TextStyle(
        fontFamily: 'Schyler',
        fontSize: 40.0,
      ),),
        backgroundColor: Colors.cyan,
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: <Widget>[
      new Container(
      padding: EdgeInsets.all(40.0),
      child: new Column(
        children: <Widget>[
          new Padding(padding: EdgeInsets.only(top: 30.0)),
          new Container(
              decoration: BoxDecoration(gradient: LinearGradient(colors: _colors,
                  stops: _stops),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))
              ),
              width: 200,
              height: 150,
              child: new MaterialButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => multi("A")));
                },
                child: Text("A",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Schyler',
                    fontSize: 100.0,
                    // fontWeight: FontWeight.bold
                  ),),
                color: Colors.blue,
              )
          ),
          new Padding(padding: EdgeInsets.only(top: 30.0)),
          new Container(
              decoration: BoxDecoration(gradient: LinearGradient(colors: _colors,
                  stops: _stops),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))
              ),
              width: 200,
              height: 150,
              child: new MaterialButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => multi("E")));
                },
                child: Text("E",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Schyler',
                    fontSize: 100.0,
                  ),),
                color: Colors.blue,
              )
          ),
          new Padding(padding: EdgeInsets.only(top: 30.0)),
          new Container(
              decoration: BoxDecoration(gradient: LinearGradient(colors: _colors,
                  stops: _stops),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))
              ),
              //padding: EdgeInsets.all(30.00),
              width: 200,
              height: 150,
              child: new MaterialButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => multi("I")));
                },
                child: Text("I",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Schyler',
                    fontSize: 100.0,
                  ),),
                color: Colors.blue,
              )
          ),
          new Padding(padding: EdgeInsets.only(top: 30.0)),
          new Container(
              decoration: BoxDecoration(gradient: LinearGradient(colors: _colors,
                  stops: _stops),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))
              ),
              //padding: EdgeInsets.all(30.00),
              width: 200,
              height: 150,
              child: new MaterialButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => multi("O")));
                },
                child: Text("O",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Schyler',
                    fontSize: 100.0,
                  ),),
                color: Colors.blue,
              )
          ),
          new Padding(padding: EdgeInsets.only(top: 30.0)),
          new Container(
              decoration: BoxDecoration(gradient: LinearGradient(colors: _colors,
                  stops: _stops),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))
              ),
             // padding: EdgeInsets.all(30.00),
              width: 200,
              height: 150,
              child: new MaterialButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => multi("U")));
                },
                child: Text("U",textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Schyler',
                    fontSize: 100.0,
                  ),),
                color: Colors.blue,
              )
          ),
          new Padding(padding: EdgeInsets.only(top: 30.0)),
          new Container(
              decoration: BoxDecoration(gradient: LinearGradient(colors: _colors,
                  stops: _stops),
                  borderRadius: BorderRadius.all(Radius.circular(20.0))
              ),
            //  padding: EdgeInsets.all(30.00),
              width: 200,
              height: 150,
              child: new MaterialButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
                onPressed: (){
                //  Navigator.pop(context, MaterialPageRoute(
                  //    builder: (context) => Main_voc()));
                },
                child: Text("Regresar",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Schyler',
                    fontSize: 40.0,
                  ),),
                color: Colors.blueGrey,
              )
          ),
          ],
          ),
          ),
        ],
      ),

    );
  }
}
