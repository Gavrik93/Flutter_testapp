import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(home: HomePage()));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Solid Software Test Task',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),

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



          ),
        )
    );
  }
}
