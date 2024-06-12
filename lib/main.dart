import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              TextButton(
                onPressed: () async {
                  AudioCache.instance = AudioCache(prefix: '');
                  final player = AudioPlayer();
                  await player.play(AssetSource('assets/audio/note1.wav'));
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
              SizedBox(
                height: 10.0,
              ),
              TextButton(
                onPressed: () async {
                  AudioCache.instance = AudioCache(prefix: '');
                  final player = AudioPlayer();
                  await player.play(AssetSource('assets/audio/note2.wav'));
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
              SizedBox(
                height: 10.0,
              ),
              TextButton(
                onPressed: () async {
                  AudioCache.instance = AudioCache(prefix: '');
                  final player = AudioPlayer();
                  await player.play(AssetSource('assets/audio/note3.wav'));
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
              SizedBox(
                height: 10.0,
              ),
              TextButton(
                onPressed: () async {
                  AudioCache.instance = AudioCache(prefix: '');
                  final player = AudioPlayer();
                  await player.play(AssetSource('assets/audio/note4.wav'));
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
              SizedBox(
                height: 10.0,
              ),
              TextButton(
                onPressed: () async {
                  AudioCache.instance = AudioCache(prefix: '');
                  final player = AudioPlayer();
                  await player.play(AssetSource('assets/audio/note5.wav'));
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
              SizedBox(
                height: 10.0,
              ),
              TextButton(
                onPressed: () async {
                  AudioCache.instance = AudioCache(prefix: '');
                  final player = AudioPlayer();
                  await player.play(AssetSource('assets/audio/note6.wav'));
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
            ],
          ),
        ),
      ),
    );
  }
}
