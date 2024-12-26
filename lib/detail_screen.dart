import 'package:dicoding_submit/model/istris.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final Istris place;
  const DetailScreen({Key? key, required this.place}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(place.imageAsset),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: Column(
                children: <Widget>[
                  Text(place.name, 
                    textAlign: TextAlign.center, 
                    style: TextStyle(
                      fontSize: 30.0, fontWeight: FontWeight.bold,
                    ),),
                  Text(place.jpname, 
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
                        SizedBox(height: 8.0),
                        Text('Voice'),
                      ],
                    ),
                    iconSize: 40.0,
                    onPressed: place.voice, // Connect to the voice function
                  ),
                  IconButton(
                    icon: Column(
                      children: [
                        Icon(Icons.person_outline),
                        SizedBox(height: 8.0),
                        Text('About'),
                      ],
                    ),
                    iconSize: 40.0,
                    onPressed: () {
                      // Open the biodata link
                      launchURL(place.biodata());
                    }, // Connect to the biodata function
                  ),
                  FavoriteButton(),
                ],
                ),
            ),
            Container(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    place.desc,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16.0 ),
                  ),
                  ),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                // shrinkWrap: true,
                children: place.imageUrls.map((url) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(url),
                                   ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);
 
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}
 
class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;
 
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}