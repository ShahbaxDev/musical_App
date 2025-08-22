import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const Xylophone());
}

class Xylophone extends StatelessWidget {
  const Xylophone({super.key});

  void playSound(int SoundNumber) {
    final AudioPlayer player = AudioPlayer();
     player.play(AssetSource('Sounds/note$SoundNumber.wav'));
  }

//Function for multiple method and we can call any time and anywhere
  Expanded BuildKey({required Color color, required int soundNumber}) {
    return Expanded(
        child: TextButton(
            onPressed: () {
              playSound(soundNumber);
            },
            style: TextButton.styleFrom(
                backgroundColor: color,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                )),
            child: const Text('')));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            BuildKey(color: Colors.green, soundNumber: 1),
            BuildKey(color: Colors.yellow, soundNumber: 2),
            BuildKey(color: Colors.pink, soundNumber: 3),
            BuildKey(color: Colors.teal, soundNumber: 4),
            BuildKey(color: Colors.deepPurpleAccent, soundNumber: 5),
            BuildKey(color: Colors.orange, soundNumber: 6),
            BuildKey(color: Colors.tealAccent, soundNumber: 7),
          ],
        ),
      ),
    );
  }
}
