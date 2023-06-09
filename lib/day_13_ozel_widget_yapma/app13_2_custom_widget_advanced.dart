// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomWidgetAdvanced extends StatelessWidget {
  final String title = 'Food';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: CustomFootButton(
                title: title,
                onPressed: () {},
              ),
            ),
          ),
        )
      ]),
    );
  }
}

class CustomFootButton extends StatelessWidget
    with _ColorsUtility, _PaddingUtility {
  CustomFootButton({Key? key, required this.title, required this.onPressed})
      : super(key: key);
  final String title;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: redColor, shape: const StadiumBorder()),
        onPressed: onPressed,
        child: Padding(
          padding: normal2xPadding,
          child: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .subtitle2
                ?.copyWith(color: white, fontWeight: FontWeight.bold),
          ),
        ));
  }
}

class _ColorsUtility {
  final Color redColor = Colors.red;
  final Color white = Colors.white;
}

class _PaddingUtility {
  final EdgeInsets normalPadding = const EdgeInsets.all(8.0);
  final EdgeInsets normal2xPadding = const EdgeInsets.all(16.0);
}
