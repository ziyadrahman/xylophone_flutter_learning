import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  Expanded buildColorButton({required Color color}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: color,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            )),
        onPressed: () async {
          final player = AudioPlayer();
          await player.play(AssetSource('note1.wav'));
        },
        child: const Text(" "),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          // child: Center(
          //   child: TextButton(
          //       onPressed: () async {
          //         final player = AudioPlayer();
          //         // await player.setSource(AssetSource('note1.wav'));
          //         await player.play(AssetSource('note1.wav'));
          //       },
          //       child: const Text("Click Me")),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildColorButton(color: Colors.red),
              buildColorButton(color: Colors.green),
              buildColorButton(color: Colors.yellow),
              buildColorButton(color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
