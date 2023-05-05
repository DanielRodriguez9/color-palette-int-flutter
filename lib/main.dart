import 'package:flutter/material.dart';

//hoy crearemos una aplicacion basica de paleta de colores, cuando se de click el body o el fondo de pantalla
//cambiara al color escogido por el dandom

//Ahora correremos la app en el mobile

import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color _bgColor = Colors.white;
  List<Color> _colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.pink,
    Colors.teal,
    Colors.brown,
    Colors.grey,
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: _bgColor,
        body: GestureDetector(
          onTap: () {
            setState(() {
              _bgColor = _getRandomColor();
            });
          },
          child: Center(
            child: Icon(
              Icons.palette,
              size: 100.0,
              color: Colors.black,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            setState(() {
              _bgColor = _getRandomColor();
            });
          },
          label: Text('Clic para cambiar de color'),
          icon: Icon(Icons.color_lens),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }

  Color _getRandomColor() {
    final _random = Random();
    return _colors[_random.nextInt(_colors.length)];
  }
}
