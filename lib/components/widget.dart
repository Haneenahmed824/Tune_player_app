import 'package:flutter/material.dart';

import 'package:music_notes_player_app_setup/models/tunes.dart';

class WidgetTune extends StatelessWidget {
  const WidgetTune(this.tune, {super.key});
  final Tunes tune;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          tune.playSound();
        },
        child: Container(
          decoration: BoxDecoration(color: tune.color),
        ),
      ),
    );
  }
}
