import 'package:flutter/material.dart';

class OzelWidgetYapma extends StatelessWidget {
  const OzelWidgetYapma({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        ElevatedButton(onPressed: () {}, child: Text("Normal Button")),
        CustomButton(
          text: 'Click me!',
          onPressed: () {
            print('Button clicked');
          },
        )
      ],
    ));
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  CustomButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
