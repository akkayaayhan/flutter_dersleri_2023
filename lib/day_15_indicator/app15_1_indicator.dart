import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        CircularProgressIndicator(),
      ]),
      body: Center(
        child: LinearProgressIndicator(),
      ),
    );
  }
}
