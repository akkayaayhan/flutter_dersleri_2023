import 'package:flutter/material.dart';

class ColumnYapisi extends StatelessWidget {
  const ColumnYapisi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
