import 'package:flutter/material.dart';

class RowYapisi extends StatelessWidget {
  const RowYapisi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text('Sol'),
          Text('Orta'),
          Text('Sağ'),
        ],
      ),
    );
  }
}
