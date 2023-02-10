import 'package:asaco_dem/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class about extends StatefulWidget {
  const about({Key? key}) : super(key: key);

  @override
  State<about> createState() => _aboutState();
}

class _aboutState extends State<about> {
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
      body: Text("A propos"),
    );
  }
}
