import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

  AudioCache audioCache = AudioCache();

  void playNote(int number) {
    audioCache.play('audios/note$number.wav');
  }

  Widget buildKey(int numberNote, Color color){
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: () {
            playNote(numberNote);
          },
          child: const Text(
            "",
          ),
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("XylophoneApp"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildKey(1, Colors.redAccent),
          buildKey(2, Colors.greenAccent),
          buildKey(3, Colors.black),
          buildKey(4, Colors.pink),
        ],
      ),
    );
  }
}
