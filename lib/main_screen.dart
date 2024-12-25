import 'package:flutter/material.dart';
import 'package:dicoding_submit/main.dart';

class MainScreen extends StatelessWidget {
  const MainScreen ({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MYIstri Apps'),
      ),
      body: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder:(context) {
            return const DetailScreen();
          },));
        },
        child: Card(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            Expanded(
              flex: 1,
              child: Image.asset('images/saki_bg.png'),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'Saki Tenma',
                      style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(
                        height: 10
                        ),
                        Text('Saki')
                  ],
                  ),
              ),
            ),
          ],
        ),
      ),
    )
    );
  }
}