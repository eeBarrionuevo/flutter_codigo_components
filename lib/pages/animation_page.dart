

import 'dart:math';
import 'package:flutter/material.dart';

class AnimationPage extends StatefulWidget {

  @override
  _AnimationPageState createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  double _width = 50;
  double _height = 50;
  double _borderRadius = 20.0;
  Color _color = Colors.greenAccent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation Page"),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          height: _width,
          width: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: BorderRadius.circular(_borderRadius),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: (){
          print("Empezar con la animación");

          Random random = Random();

          _width = random.nextInt(300).toDouble();
          _height = random.nextInt(300).toDouble();
          _borderRadius = random.nextInt(200).toDouble();

          _color = Color.fromRGBO(
            random.nextInt(256),
            random.nextInt(256),
            random.nextInt(256),
            1
          );

          setState(() {

          });
        },
      ),
    );
  }
}
