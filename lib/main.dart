import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Future<void> playSound(int numberAudio) async {
    AudioCache.instance = AudioCache(prefix: '');
    final player = AudioPlayer();
    await player.play(AssetSource('assets/audio/note$numberAudio.wav'));
  }

  Expanded buidKey({required int numberAudio, required MaterialColor color}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(numberAudio);
        },
        style: TextButton.styleFrom(
          backgroundColor: color, // Background color
          minimumSize: Size(100, 50), // Size of the button
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero, // Rectangle shape
          ),
        ),
        child: SizedBox.shrink(), // No child widget
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buidKey(color: Colors.red, numberAudio: 1),
              buidKey(color: Colors.orange, numberAudio: 2),
              buidKey(color: Colors.yellow, numberAudio: 3),
              buidKey(color: Colors.green, numberAudio: 4),
              buidKey(color: Colors.blue, numberAudio: 5),
              buidKey(color: Colors.purple, numberAudio: 6),
            ],
          ),
        ),
      ),
    );
  }
}
