import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen ({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MYIstri Apps'),
      ),
      body: Card(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            Expanded(
              flex: 1,
              child: Image.asset('images/saki.png'),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const Text(
                      'Saki Tenma',
                      style: TextStyle(fontSize: 16.0),
                      ),
                      const SizedBox(
                        height: 10
                        ),
                        const Text('Saki')
                  ],
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
