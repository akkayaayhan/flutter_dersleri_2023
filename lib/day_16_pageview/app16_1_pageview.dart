import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  final List<String> pages = ['Page 1', 'Page 2', 'Page 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: Text(
              pages[index],
              style: TextStyle(fontSize: 30),
            ),
          );
        },
        itemCount: pages.length,
      ),
    );
  }
}
