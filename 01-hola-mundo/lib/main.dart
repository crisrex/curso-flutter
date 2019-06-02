import 'package:flutter/material.dart';

void main() {
  runApp(new HolaMundo());
}

/* La clase HolaMundo hereda de la clase StatlessWidget ya que se trata de un widget estático, o sea que no va
a variar su aspecto en la ejecución */ 
class HolaMundo extends StatelessWidget {

  /* Al definir la clase herendado de StatelessWidget estamos obligados a redefinir el método build que devolverá un 
  objeto de la clase Widget */
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hola Mundo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('App de ejemplo'),
        ),
        body: Center(
          child: Text('Hola Mundo'),
        ),
      ),
    );
  }
}