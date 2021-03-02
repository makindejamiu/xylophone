import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(Xylophone());
}

void playSound(int noteNumber) {
  final player = AudioCache();
  player.play('note$noteNumber.wav');
}

Expanded buildSoundKey(Color color, int noteNumber) {
  return Expanded(
    child: RawMaterialButton(
      fillColor: color,
      onPressed: () {
        playSound(noteNumber);
      },
    ),
  );
}

class Xylophone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildSoundKey(Colors.red, 1),
              buildSoundKey(Colors.orange, 2),
              buildSoundKey(Colors.green, 3),
              buildSoundKey(Colors.blue, 4),
              buildSoundKey(Colors.pink, 5),
              buildSoundKey(Colors.yellow, 6),
              buildSoundKey(Colors.purple, 7)
            ],
          ),
        ),
      ),
    );
  }
}
