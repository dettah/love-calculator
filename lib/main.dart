import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> imageLIst = ["enemies.jpg", "love.gif"];
  var imageStatus = "talking.gif";
  void calculatorFunc() {
    var amorIndex = Random().nextInt(100) + 1;
    setState(() {
    if (amorIndex < 50) {
      imageStatus = imageLIst[0];
    } else {
      imageStatus = imageLIst[1];
    }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Love Calculator")),
        ),
        backgroundColor: Colors.indigo[900],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Center(
              child: Text(
                "Chukwuemeka",
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontSize: 50,
                ), // TODO: -fix the name wrap thing`
              ),
            ),
            Center(
              child: Image.asset(
                "assets/$imageStatus",
                width: 200,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your name',
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextButton(
                  onPressed: calculatorFunc,
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.indigo[500])),
                  child: const Text(
                    "Calculate",
                    style: TextStyle(
                        color: Colors.white, fontSize: 30, letterSpacing: 2),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
