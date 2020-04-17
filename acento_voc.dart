import 'package:flutter/material.dart';
import 'Main_voc.dart';
import 'voc.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget{
  MyApp({this.audioPlayer,this.audioCache});
  AudioPlayer audioPlayer;
  AudioCache audioCache;
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
      home: acent(this.audioPlayer,this.audioCache),
    );
  }

}
class acent extends StatefulWidget{
  acent(this.audioPlayer,this.audioCache);
  AudioPlayer audioPlayer;
  AudioCache audioCache;

  @override
  acentState createState() => new acentState(this.audioPlayer,this.audioCache);


}
class acentState extends State<acent>{
  acentState(this.audioPlayer,this.audioCache);
  AudioPlayer audioPlayer;
  AudioCache audioCache;
  List<Color> _colors = [Colors.deepOrangeAccent,Colors.green];
  List<double> _stops = [0.7,0.0];
  @override
  void initState() {
    super.initState();
    audioPlayer.stop();
    audioCache.play("minusc_acento.mp3");
  }
  double buttonHigh = 50;
  double buttonWidth = 100;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(title: Text("m-Acentos",
      style: TextStyle(
        //fontFamily: 'Schyler',
        fontSize: 45.0,
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
                      builder: (context) => multi("á",this.audioPlayer,this.audioCache)));
                },
                child: Text("á",textAlign: TextAlign.center,
                  style: TextStyle(
                    //fontFamily: 'Schyler',
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
              width: 200,
              height: 150,
              child: new MaterialButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => multi("é",this.audioPlayer,this.audioCache)));
                },
                child: Text("é",textAlign: TextAlign.center,
                  style: TextStyle(
                   // fontFamily: 'Schyler',
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
              width: 200,
              height: 150,
              child: new MaterialButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => multi("í",this.audioPlayer,this.audioCache)));
                },
                child: Text("í",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    //fontFamily: 'Schyler',
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
              width: 200,
              height: 150,
              child: new MaterialButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => multi("ó",this.audioPlayer,this.audioCache)));
                },
                child: Text("ó",textAlign: TextAlign.center,
                  style: TextStyle(
                    //fontFamily: 'Schyler',
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
              width: 200,
              height: 150,
              child: new MaterialButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => multi("ú",this.audioPlayer,this.audioCache)));
                },
                child: Text("ú",textAlign: TextAlign.center,
                  style: TextStyle(
                    //fontFamily: 'Schyler',
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
              width: 200,
              height: 150,
              child: new MaterialButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
                onPressed: (){
                  audioPlayer.stop();
                  audioCache.play("indicacion_mezcla.mp3");
                  Navigator.pop(context, MaterialPageRoute(
                      builder: (context) => Main_voc(this.audioPlayer,this.audioCache)));
                },
                child: Text("Regresar",textAlign: TextAlign.center,
                  style: TextStyle(
                    //fontFamily: 'Schyler',
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
