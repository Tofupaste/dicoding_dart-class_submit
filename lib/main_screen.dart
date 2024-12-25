import 'package:dicoding_submit/main.dart';
import 'package:flutter/material.dart';
import 'detail_screen.dart'; 

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wisata Bandung'),
      ),
      body: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const DetailScreen();
          }));
        },
        child: Card(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Image.asset('images/saki_bg.png'),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const Text(
                        'Saki Tenma',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text('Leo/Need'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}