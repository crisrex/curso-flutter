import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(title: 'Area triángulo', home: new AreaTriangulo()));
}

class AreaTriangulo extends StatelessWidget {
  double baseTrianguloCentimetros = 0.0;
  double alturaTrianguloCentimetros = 0.0;

  @override
  Widget build(BuildContext context) {
    // Creamos el campo  para la base del triangulo
    TextField textfieldBase = new TextField(
      decoration: new InputDecoration(labelText: "Base (cm)"),
      keyboardType: TextInputType.number,
      onChanged: (String value) {
        try {
          baseTrianguloCentimetros = double.parse(value);
        } catch (exception) {
          baseTrianguloCentimetros = 0.0;
        }
      }      
    );

    // Creamos el campo para la altura del triangulo
    TextField textfieldAltura = new TextField(
        decoration: new InputDecoration(labelText: "Altura (cm)"),
        keyboardType: TextInputType.number,
        onChanged: (String value) {
          try {
            alturaTrianguloCentimetros = double.parse(value);
          } catch (exception) {
            alturaTrianguloCentimetros = 0.0;
          }
        });

    // Creamos el botón
    RaisedButton buttonCalcular = new RaisedButton(
        child: new Text("Calcular"),
        onPressed: () {
          // Calculamos el área
          double areaTrianguloCentimetros = baseTrianguloCentimetros * alturaTrianguloCentimetros / 2;
          // Creamos el diálogo
          AlertDialog dialog = new AlertDialog(
              content: new Text("Área del triángulo: \n" + areaTrianguloCentimetros.toString() + " cm"));
          // Mostramos el diálogo
          showDialog(context: context, builder: (BuildContext context) => dialog);
        });

    Container container = new Container(
        padding: const EdgeInsets.all(16.0),
        child: new Column(
            children: [textfieldBase, textfieldAltura, buttonCalcular]));

    AppBar appBar = new AppBar(title: new Text("Calculadora de área de triángulo"));

    Scaffold scaffold = new Scaffold(appBar: appBar, body: container);
    return scaffold;
  }
}
