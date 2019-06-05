import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new HolaMundoConTema(),
    /* Definimos el tema (theme) que vamos a utilizar en la app. Como es habitual en Material Design definimos el color principal,
    el color de fondo y el color de énfasis*/
    theme: new ThemeData(
      primarySwatch: Colors.green,
      accentColor: Colors.lightGreenAccent,
      backgroundColor: Colors.black12,
    ),
  ));
}

class HolaMundoConTema extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Hola Mundo con Tema"),
      ),
      body: new Container(
        // Otro modo de definir el color de fondo
        decoration: new BoxDecoration(color: Colors.black87),
        child: new Center(
          child: new Container(
            // use the theme accent color as background color for this widget
            color: Theme.of(context).accentColor,
            child: new Text('Hola Mundo',
              // Set text style as per theme
              style: Theme.of(context).textTheme.title,
            ),
          ),
        ),
      ),
    );
  }
}
