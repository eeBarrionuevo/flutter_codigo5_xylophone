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

  Widget buildKey({required int numberNote, required Color color}){
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
          buildKey(numberNote: 1, color: Color(0xfff72585),),
          buildKey(numberNote: 2, color: Color(0xffb5179e),),
          buildKey(numberNote: 3, color: Color(0xff7209b7),),
          buildKey(numberNote: 4, color: Color(0xff560bad),),
          buildKey(numberNote: 5, color: Color(0xff480ca8),),
          buildKey(numberNote: 6, color: Color(0xff3a0ca3),),
          buildKey(numberNote: 7, color: Color(0xff3f37c9),),

        ],
      ),
    );
  }
}
