import 'package:dicoding_submit/main_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MYIstri Apps',
      theme: ThemeData(),
      home: const MainScreen(),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [
            Image.asset('images/saki_bg.png'),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: Column(
                children: <Widget>[
                  Text('Saki Tenma', 
                    textAlign: TextAlign.center, 
                    style: TextStyle(
                      fontSize: 30.0, fontWeight: FontWeight.bold,
                    ),),
                  Text('天馬咲希', 
                    textAlign: TextAlign.center, 
                    style: const TextStyle(
                      fontSize: 15.0,
                      color: Color(0xFFFFDD45),
                    ),),
                ],
              )
              ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(
                    icon: Column(
                      children: [
                        Icon(Icons.play_circle_outline),
                        SizedBox(height: 8.0,),
                        Text('Voice'),
                      ],
                    ),
                    iconSize: 40.0,
                    onPressed: (){},
                  ),
                  IconButton(
                    icon: Column(
                      children: [
                        Icon(Icons.person_outline),
                        SizedBox(height: 8.0,),
                        Text('About'),
                      ],
                    ),
                    iconSize: 40.0,
                    onPressed: (){},
                  ),
                  IconButton(
                    icon: Column(
                      children: [
                        Icon(Icons.favorite_border_outlined),
                        SizedBox(height: 8.0,),
                        Text('Favorite'),
                      ],
                    ),
                    iconSize: 40.0,
                    onPressed: (){},
                  ),
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
                  ),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                // shrinkWrap: true,
                children: [
                    Padding( 
                    padding: const EdgeInsets.all( 4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.network(
                      'https://static.wikia.nocookie.net/projectsekai/images/6/63/The_Best_Doll_Festival%21.png',
                      fit: BoxFit.cover,
                      ),
                    ),
                    ),
                    Padding( 
                    padding: const EdgeInsets.all( 4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.network(
                      'https://static.wikia.nocookie.net/projectsekai/images/6/63/The_Best_Doll_Festival%21.png',
                      fit: BoxFit.cover,
                      ),
                    ),
                    ),                       
                    Padding( 
                    padding: const EdgeInsets.all( 4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.network(
                      'https://static.wikia.nocookie.net/projectsekai/images/6/63/The_Best_Doll_Festival%21.png',
                      fit: BoxFit.cover,
                      ),
                    ),
                    ),
              ],
            )
            ),
            ],
          ),
        )
      ),
    );
  }
}