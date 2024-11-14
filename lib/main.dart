import 'package:flutter/material.dart';
import 'package:this_basic_app/state_changing.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'OG for the OGs',
            style: TextStyle(color: Colors.white, fontSize: 28.0),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(7, 1, 58, 1),
          elevation: 0.0,
        ),

        body: const StateChanger.blueAccent(),
        //body: const StateChanger(Colors.deepPurple, Colors.deepPurpleAccent),
      ),
    ),
  );
}