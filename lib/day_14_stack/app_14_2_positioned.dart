import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Positioned(
              left: 50,
              top: 50,
              child: Image.network(
                'https://picsum.photos/200/300',
              ),
            ),
            Positioned(
              right: 50,
              bottom: 50,
              child: Image.network(
                'https://picsum.photos/300/200',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
