import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'Mayusculas_voc.dart';
import 'minusculas_voc.dart';
import 'acento_voc.dart';
import 'Mayusc_voc_acent.dart';
void main() => runApp(Main_vocs());
class Main_vocs extends StatelessWidget{
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
      home: Main_voc(),
    );
  }

}
class Main_voc extends StatefulWidget{
  @override
  Main_vocales createState() => new Main_vocales();


}
class Main_vocales extends State<Main_voc>{
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
      appBar: AppBar(title: Text("Aprendamos Vocales",
        textAlign: TextAlign.center,
        style: TextStyle(

        ),),
        automaticallyImplyLeading: false,
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
                      builder: (context) => Mayus()));
                },
                child: Text("1.-MAYUSCULAS",
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
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => minus()));
                },
                  child: Text("2.-minusculas",
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
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => acent()));
                },
                child: Text("3.-MAYUSCULA con Acentos",
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
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => acentMin()));
                },
                child: Text("4.-minuscula con Acentos",
                  textAlign: TextAlign.center,
                  style: TextStyle(

                  ),
                ),
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
                      builder: (context) => homePage()));
                },
                child: Text("Regresar",
                  textAlign: TextAlign.center,
                  style: TextStyle(

                  ),
                ),
                color: Colors.blue,
              )
          ),


        ],
      ),

    );
  }
}