import 'package:flutter/material.dart';

class ListViewBuilderYapisi extends StatefulWidget {
  const ListViewBuilderYapisi({super.key});

  @override
  State<ListViewBuilderYapisi> createState() => _ListViewBuilderYapisiState();
}

class _ListViewBuilderYapisiState extends State<ListViewBuilderYapisi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
        itemCount: 15,
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.white,
          );
        },
        itemBuilder: (context, index) {
          return SizedBox(
            height: 200,
            child: Expanded(
              child: Column(children: [
                Image.network('https://picsum.photos/200'),
                Text('$index'),
              ]),
            ),
          );
        },
      ),
    );
  }
}
