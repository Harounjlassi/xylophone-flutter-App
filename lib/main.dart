import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Future<void> playSound(int numberAudio) async {
    AudioCache.instance = AudioCache(prefix: '');
    final player = AudioPlayer();
    await player.play(AssetSource('assets/audio/note$numberAudio.wav'));
  }

  buidKey() {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(1);
        },
        style: TextButton.styleFrom(
          backgroundColor: Colors.red, // Background color
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
              buidKey(),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(2);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.orange, // Background color
                    minimumSize: Size(100, 50), // Size of the button
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero, // Rectangle shape
                    ),
                  ),
                  child: SizedBox.shrink(), // No child widget
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(3);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.yellow, // Background color
                    minimumSize: Size(100, 50), // Size of the button
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero, // Rectangle shape
                    ),
                  ),
                  child: SizedBox.shrink(), // No child widget
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(4);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green, // Background color
                    minimumSize: Size(100, 50), // Size of the button
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero, // Rectangle shape
                    ),
                  ),
                  child: SizedBox.shrink(), // No child widget
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(5);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.teal, // Background color
                    minimumSize: Size(100, 50), // Size of the button
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero, // Rectangle shape
                    ),
                  ),
                  child: SizedBox.shrink(), // No child widget
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(6);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue, // Background color
                    minimumSize: Size(100, 50), // Size of the button
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero, // Rectangle shape
                    ),
                  ),
                  child: SizedBox.shrink(), // No child widget
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(7);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor:
                        Colors.deepPurpleAccent, // Background color
                    minimumSize: Size(100, 50), // Size of the button
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero, // Rectangle shape
                    ),
                  ),
                  child: SizedBox.shrink(), // No child widget
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
