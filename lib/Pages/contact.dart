import 'package:asaco_dem/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class contact extends StatefulWidget {
  const contact({Key? key}) : super(key: key);

  @override
  State<contact> createState() => _contactState();
}

class _contactState extends State<contact> {
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
      body: Text("Contact"),
    );
  }
}
