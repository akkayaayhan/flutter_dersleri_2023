import 'package:flutter/material.dart';

class BottomAppBarYapisi extends StatefulWidget {
  const BottomAppBarYapisi({super.key});

  @override
  State<BottomAppBarYapisi> createState() => _BottomAppBarYapisiState();
}

class _BottomAppBarYapisiState extends State<BottomAppBarYapisi> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomAppBar Yapısı'),
      ),
      body: Center(child: Text('Page $_currentIndex')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    _currentIndex = 0;
                  });
                },
                icon: Icon(Icons.home)),
            IconButton(
                onPressed: () {
                  setState(() {
                    _currentIndex = 1;
                  });
                },
                icon: Icon(Icons.search)),
            SizedBox(
              width: 48,
            ),
            IconButton(
                onPressed: () {
                  setState(() {
                    _currentIndex = 2;
                  });
                },
                icon: Icon(Icons.person)),
            IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
