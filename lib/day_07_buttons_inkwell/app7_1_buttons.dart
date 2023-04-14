import 'package:flutter/material.dart';

class MyButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Button Örneği'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              // Yükseltilmiş Buton
              onPressed: () {},
              child: Text('ElevatedButton'),
            ),
            SizedBox(height: 20),
            OutlinedButton(
              // Kenarlıklı Buton
              onPressed: () {},
              child: Text('OutlinedButton'),
            ),
            SizedBox(height: 20),
            TextButton(
              // Metin Butonu
              onPressed: () {},
              child: Text('TextButton'),
            ),
            SizedBox(height: 20),
            IconButton(
              // Icon Butonu
              onPressed: () {},
              icon: Icon(Icons.thumb_up),
            ),
            SizedBox(height: 20),
            FloatingActionButton(
              // Yüzen Buton
              onPressed: () {},
              child: Icon(Icons.add),
            ),
            SizedBox(height: 20),
            ButtonBar(
              // Buton Çubuğu
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {},
                  child: Text('ButtonBar Butonu 1'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('ButtonBar Butonu 2'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
