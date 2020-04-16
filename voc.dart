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
  List<Color> _colors = [Colors.black54,Colors.black54];
  List<double> _stops = [0.0,0.7];
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(title: Text("A ESCRIBIR"),
        backgroundColor: Colors.cyan,
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
      new Container(
      padding: EdgeInsets.all(40.0),
      child: new Column(
        children: <Widget>[
          new Padding(padding: EdgeInsets.only(top: 50.0)),
          new Text(
            "$text",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 150.00,
              fontWeight: FontWeight.bold

            ),
          ),
          new Padding(padding: EdgeInsets.only(top: 150.0)),
          new Row(
            mainAxisAlignment:   MainAxisAlignment.center,
            children: <Widget>[
              new Container(
                decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.pinkAccent,Colors.pinkAccent],
                    stops: _stops),
                    borderRadius: BorderRadius.all(Radius.circular(20.0))
                ),
                // padding: EdgeInsets.all(30.00),
                width: 120,
                height: 70,
                child: new MaterialButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
                  onPressed: () {

                  },
                  child: Text("Imagen",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20
                    ),
                  ),
                  color: Colors.cyanAccent,
                ),
              ),
              new Padding(padding: EdgeInsets.all(20.0)),
              new Container(
                decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.pinkAccent,Colors.pinkAccent],
                    stops: _stops),
                    borderRadius: BorderRadius.all(Radius.circular(20.0))
                ),
                // padding: EdgeInsets.all(30.00),
                width: 120,
                height: 70,
                child: new MaterialButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),

                  onPressed: () {

                  },
                  child: Text("Foto",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25
                    ),
                  ),
                  color: Colors.cyanAccent,

                ),
              ),
            ],
          ),
    ],
    ),
    ),
        ],
      ),

    );
  }
}
