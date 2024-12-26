// istris.dart
import 'dart:ui';

class Istris {
  String name;
  String jpname;
  String umur;
  String band;
  VoidCallback voice;
  String Function() biodata;
  String imageAsset;
  List<String> imageUrls;

  Istris({
    required this.name,
    required this.jpname,
    required this.umur,
    required this.band,
    required this.voice,
    required this.biodata,
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
    biodata: () =>
        'Saki Tenma is a cheerful and kind character from the game Project Sekai.',
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