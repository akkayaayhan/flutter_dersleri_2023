import 'package:flutter/material.dart';

class RowYapisi extends StatelessWidget {
  const RowYapisi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Container(
          width: 100,
          height: 200,
          color: Colors.red,
        ),
        Container(
          width: 100,
          height: 200,
          color: Colors.yellow,
        ),
        Container(
          width: 100,
          height: 200,
          color: Colors.green,
        )
      ]),
    );
  }
}
