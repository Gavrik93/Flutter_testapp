import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: MyHomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  _showMenu() async {
    await showMenu(
      context: context,
      position: RelativeRect.fromLTRB(100, 400, 100, 400),
      items: [
        PopupMenuItem(
          child: Text("send feedback"),
        ),
        PopupMenuItem(
          child: Text("777gava777@gmail.com"),
        ),
      ],
      elevation: 10.0,
    );
  }

  final Random _random = Random();
  bool changeText = false;
  Color _color = Color(0xFFFFFFFF);

  void changeColor() {
    setState(() {
      changeText = !changeText;
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
        body: GestureDetector(
      onLongPress: _showMenu,
      onTap: changeColor,
      child: Container(
        color: _color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
              child: AnimatedDefaultTextStyle(
                  style: changeText
                      ? TextStyle(
                          fontSize: 65,
                          color: Colors.white,
                          fontWeight: FontWeight.w100,
                        )
                      : TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                        ),
                  duration: const Duration(microseconds: 150),
                  curve: Curves.bounceInOut,
                  child: Text("Hey there!")),
            )
          ],
        ),
      ),
    ));
  }
}
