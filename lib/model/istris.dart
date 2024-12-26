import 'package:flutter/material.dart';

class Istris {
  String name;
  String jpname;
  String umur;
  String band;
  VoidCallback voice;
  String Function() biodata;
  String desc;
  String imageAsset;
  List<String> imageUrls;

  Istris({
    required this.name,
    required this.jpname,
    required this.umur,
    required this.band,
    required this.voice,
    required this.biodata,
    required this.desc,
    required this.imageAsset,
    required this.imageUrls,
  });
}

var IstrisList = [
  Istris(
    name: 'Saki Tenma',
    jpname: '天馬咲希',
    umur: '17',
    band: 'Leo/need',
    voice: () {
      // Code to play the audio file
      playVoice('audio/saki_1.wav');
    },
    biodata: () => 'For more information, visit: https://projectsekai.fandom.com/wiki/Saki_Tenma',
    desc: 'Saki Tenma is a Character from Game Cell phone that named Project Sekai. She is a younger sister of Tenma Tsukasa.',
    imageAsset: 'images/saki_bg.png',
    imageUrls: [
      'https://static.wikia.nocookie.net/projectsekai/images/6/63/The_Best_Doll_Festival%21.png',
      'https://static.wikia.nocookie.net/projectsekai/images/6/63/The_Best_Doll_Festival%21.png',
      'https://static.wikia.nocookie.net/projectsekai/images/6/63/The_Best_Doll_Festival%21.png',
    ],
  ),
];

void playVoice(String path) {
  // Implement the function to play the audio file
  print('Playing voice from $path');
}