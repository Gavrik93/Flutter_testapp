import 'package:flutter/material.dart';
import 'dart:math';



class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Egor SolidSoftware test task',
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Random _random = Random();

  Color _color = Color(0xFFFFFFFF);

  void changeColor() {
    setState(() {
      _color = Color.fromARGB(
          _random.nextInt(256),
          _random.nextInt(256),
          _random.nextInt(256),
          _random.nextInt(256),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: changeColor,
        child: Container(
          color: _color,
          child: Center(
            child: Text("Hey there",
              style: TextStyle(
                color: _color,
              fontWeight: FontWeight.bold,
              fontSize: 35.0,

            ),)
            ,
          )

        ),
      )
    );
  }
}

void main() => runApp(HomePage());