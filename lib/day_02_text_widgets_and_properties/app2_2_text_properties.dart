import 'package:flutter/material.dart';

class TextProperties extends StatelessWidget {
  const TextProperties({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(
        'Welcome',
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.right,
        style: const TextStyle(
            wordSpacing: 2,
            decoration: TextDecoration.underline,
            fontStyle: FontStyle.italic,
            letterSpacing: 2,
            color: Colors.lime,
            fontSize: 16,
            fontWeight: FontWeight.w600),
      ),
    );
  }
}
