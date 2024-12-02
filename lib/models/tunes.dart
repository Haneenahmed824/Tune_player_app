
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Tunes {
  const Tunes(this.color,this.sound);
  final Color color;
  final String sound;
  
    playSound() {
    AudioCache.instance = AudioCache(prefix: '');
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
  }

