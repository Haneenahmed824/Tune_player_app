import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:music_notes_player_app_setup/components/widget.dart';
import 'package:music_notes_player_app_setup/models/tunes.dart';

class HomePage extends StatelessWidget {
   const HomePage();
 final List<Tunes> tunesList = const[
    Tunes(
      const Color.fromARGB(255, 181, 163, 163),'note1.wav'
    ),
    Tunes(
      const Color.fromARGB(255, 146, 98, 98),'note2.wav'
    ),
    Tunes(
      const Color.fromARGB(255, 109, 197, 192),'note3.wav'
    ),
    Tunes(
      const Color.fromARGB(255, 252, 170, 172),'note4.wav'
    ),
    Tunes(const Color.fromARGB(255, 127, 179, 145),'note5.wav'),
    Tunes(const Color.fromARGB(255, 91, 62, 62),'note6.wav'),
    Tunes(const Color.fromARGB(255, 196, 146, 191),'note7.wav')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('flutter tune')),
      backgroundColor: Color.fromARGB(255, 168, 181, 191),
      body:  Column(
        children:tunesList.map((e)=>WidgetTune(e)).toList(),
      ),
    );
  }
}
