import 'dart:math';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //Random color generator;
  final List<Color> colors = [Colors.red, Colors.orange, Colors.yellow,
    Colors.green, Colors.blue, Colors.indigo, Colors.purple];
  //Build key function
  Expanded buildKey({int note, Color color}){
    return Expanded(
      // flex: 10,
      child: RaisedButton(
        // elevation: 5.0,
        color: colors[Random().nextInt(7)],
        onPressed: (){
          play(note);
        },
      ),
    );
  }

  void play(int order){
    final player = AudioCache();//Accessing the audio cache to enable audio file
    // selection
    player.play('note$order.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          backgroundColor: Colors.white38,
          title: Text("Xylophone App",
            textAlign: TextAlign.center,
          ),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(note : Random().nextInt(7) + 1, color: Colors.cyan),
              buildKey(note : Random().nextInt(7) + 1, color: Colors.deepOrangeAccent),
              buildKey(note : Random().nextInt(7) + 1, color: Colors.amber),
              buildKey(note : Random().nextInt(7) + 1, color: Colors.teal),
              buildKey(note : Random().nextInt(7) + 1, color: Colors.brown),
              buildKey(note : Random().nextInt(7) + 1, color: Colors.red),
              buildKey(note : Random().nextInt(7) + 1, color: Colors.lightGreen),
            ],
          ),
        ),
      ),
    );
  }
}
