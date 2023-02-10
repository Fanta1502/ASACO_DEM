import 'package:asaco_dem/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Presentation extends StatefulWidget {
  const Presentation({Key? key}) : super(key: key);

  @override
  State<Presentation> createState() => _PresentationState();
}

class _PresentationState extends State<Presentation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[400],
      drawer: const barDeTache(),
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        title: Text('ASACO-DEM',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Text("Présentation"),
    );
  }
}
