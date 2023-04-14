import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Asset Image Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Asset Image Example'),
        ),
        body: Center(
          child: Container(
            child: Image(
              image: AssetImage('assets/images/flutter_logo.png'),
            ),
          ),
        ),
      ),
    );
  }
}
