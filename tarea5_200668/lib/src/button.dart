import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  String flutterText = "My melody";
  int index2 = 0;
  List<String> collections = ['My melody', 'Cinamonroll', 'Kurumi'];
  List<String> urlImgs = [
    'assets/sanrio1.jpg',
    'assets/sanrio2.jpg',
    'assets/sanrio3.jpg'

  ];
  int index = 0;

  void onPressButton() {
    setState(() {
      index = index < urlImgs.length - 1 ? index + 1 : 0;
      flutterText = collections[index];
      index2 = index2 < 4 ? index2 + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Carrusel de imagenes"),
          backgroundColor: Colors.pink,
        ),
        body: Container(
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(flutterText, style: TextStyle(fontSize: 40.0)),
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              Image.asset(
                urlImgs[index]
               
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.pink,
                ),
                
                child: Text(
                  "Sanrio Personajes",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: onPressButton,
              )
            ],
          )),
        ));
  }
}