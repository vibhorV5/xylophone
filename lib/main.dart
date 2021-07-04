import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(Xylophone());

class Xylophone extends StatelessWidget {
  void soundName(int sound) {
    final player = AudioCache();
    player.play('assets_note$sound.wav');
  }

  Expanded buttonSelect({dynamic primary, required int playSound}) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: primary,
        ),
        onPressed: () {
          soundName(playSound);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buttonSelect(primary: Colors.grey, playSound: 1),
              buttonSelect(primary: Colors.grey[900], playSound: 2),
              buttonSelect(primary: Colors.grey, playSound: 3),
              buttonSelect(primary: Colors.grey[900], playSound: 4),
              buttonSelect(primary: Colors.grey, playSound: 5),
              buttonSelect(primary: Colors.grey[900], playSound: 6),
              buttonSelect(primary: Colors.grey, playSound: 7),
            ],
          ),
        ),
      ),
    );
  }
}
