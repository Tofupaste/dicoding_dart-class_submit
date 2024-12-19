import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MYIstri Apps',
      theme: ThemeData(),
      home: const DetailScreen(),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child:const Text('Saki Tenma', 
                textAlign: TextAlign.center, 
                style: TextStyle(
                  fontSize: 30.0, fontWeight: FontWeight.bold,
                ),)
              ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: [
                      Icon(Icons.play_circle_outline),
                      SizedBox(height: 8.0,),
                      Text('Listen Voice'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.info_outline),
                      SizedBox(height: 8.0,),
                      Text('About'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.favorite_border_outlined),
                      SizedBox(height: 8.0,),
                      Text('Luv'),
                    ],
                  )
                ],
                ),
            ),
            Container(
                  padding: const EdgeInsets.all(16.0),
                  child: const Text(
                    'Saki Tenma is a Character from Game Cell phone that named Project Sekai. She is a younger sister of Tenma Tsukasa.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16.0 ),
                  ),
                  )
            ],
          ),
        )
    );
  }
}