import 'package:flutter/material.dart';

class ListViewYapisi extends StatefulWidget {
  const ListViewYapisi({super.key});

  @override
  State<ListViewYapisi> createState() => _ListViewYapisiState();
}

class _ListViewYapisiState extends State<ListViewYapisi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.all(8.0),
        children: [
          FittedBox(
            //elemanların o alana sığması için kullanılır.
            child: Text(
              'Merhaba',
              style: Theme.of(context).textTheme.headline1,
              maxLines: 1,
            ),
          ),
          Container(
            color: Colors.red,
            height: 300,
          ),
          const Divider(),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal, //yatay listView oluşturur
              children: [
                Container(
                  color: Colors.green,
                  height: 300,
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.close),
          )
        ],
      ),
    );
  }
}
